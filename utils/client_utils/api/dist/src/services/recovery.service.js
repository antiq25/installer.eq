import prisma from '../prisma';
import utils from './utils.service';
import SafeError from '../safeError';
import redis from '../redis';
class RecoveryService {
    prisma = prisma;
    redis = redis;
    _forgotPassword = async (email) => {
        const user = await this.prisma.user.findUnique({
            where: {
                email
            },
            select: {
                id: true,
                email: true
            }
        });
        if (!user) {
            throw new SafeError('User not found', true);
        }
        const code = await utils.sendEmail(user.email, 'Password Reset', true, false);
        await this.redis.setex(`passwordRecovery:${code}`, 600, user.id);
        return true;
    };
    _resetPassword = async (code, newPassword) => {
        const id = await this.redis.get(`passwordRecovery:${code}`);
        if (!id) {
            throw new SafeError('Invalid code', true);
        }
        const { salt, hash } = await utils.hashPassword(newPassword);
        await this.prisma.user.update({
            where: {
                id: Number(id)
            },
            data: {
                passwordHash: hash,
                passwordSalt: salt
            }
        });
        await this.redis.del(`passwordRecovery:${code}`);
        return true;
    };
}
export default RecoveryService;
//# sourceMappingURL=recovery.service.js.map