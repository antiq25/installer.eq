import prisma from '../prisma';
import SafeError from '../safeError';
class ProfileService {
    prisma = prisma;
    constructor() { }
    _getProfile = async (id) => {
        const profile = await this.prisma.user.findUnique({
            where: {
                id
            },
            select: {
                id: true,
                email: true,
                firstName: true,
                lastName: true
            }
        });
        if (!profile) {
            throw new SafeError('Profile not found', true);
        }
        return profile;
    };
    _updateProfile = async (id, data) => {
        const profile = await this.prisma.user.update({
            where: {
                id
            },
            data: {
                firstName: data.firstName,
                lastName: data.lastName
            },
            select: {
                id: true,
                email: true,
                firstName: true,
                lastName: true
            }
        });
        if (!profile) {
            throw new SafeError('Profile not found', true);
        }
        return profile;
    };
}
export default ProfileService;
//# sourceMappingURL=profile.service.js.map