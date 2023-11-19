import prisma from '../prisma';
import jwt from 'jsonwebtoken';
import utils from './utils.service';
import SafeError from '../safeError';
import redis from '../redis';
class AuthService {
    prisma = prisma;
    redis = redis;
    _signup = async (data) => {
        const exists = await this.prisma.user.findUnique({
            where: {
                email: data.email
            }
        });
        if (exists) {
            throw new SafeError('User already exists', true);
        }
        const { salt, hash } = await utils.hashPassword(data.password);
        const code = await utils.sendEmail(data.email, 'Email Verification', false, true);
        const user = await this.prisma.user.create({
            data: {
                email: data.email,
                firstName: data.firstName,
                lastName: data.lastName,
                passwordHash: hash,
                passwordSalt: salt
            },
            select: {
                id: true,
                email: true,
                firstName: true,
                lastName: true
            }
        });
        // 10 minutes
        await this.redis.setex(`emailVerification:${code}`, 600, user.id);
        return user;
    };
    _login = async (data) => {
        const user = await this.prisma.user.findUnique({
            where: {
                email: data.email
            },
            select: {
                id: true,
                email: true,
                passwordHash: true,
                passwordSalt: true,
                emailVerified: true
            }
        });
        if (!user) {
            throw new SafeError('Invalid email or password', true);
        }
        const isValid = await utils.comparePassword(data.password, user.passwordSalt, user.passwordHash);
        if (!isValid) {
            throw new SafeError('Invalid email or password', true);
        }
        const token = jwt.sign({
            id: user.id,
            email: user.email,
            emailVerified: user.emailVerified
        }, process.env.JWT_SECRET, {
            expiresIn: '1d'
        });
        return { token };
    };
    _verifyEmail = async (code) => {
        const id = await this.redis.get(`emailVerification:${code}`);
        if (!id) {
            throw new SafeError('Invalid code', true);
        }
        await this.prisma.user.update({
            where: {
                id: Number(id)
            },
            data: {
                emailVerified: true
            }
        });
        await this.redis.del(`emailVerification:${code}`);
        return true;
    };
    _resendVerificationEmail = async (email) => {
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
        const code = await utils.sendEmail(user.email, 'Email Verification', false, true);
        await this.redis.setex(`emailVerification:${code}`, 600, user.id);
        return true;
    };
}
export default AuthService;
//# sourceMappingURL=auth.service.js.map