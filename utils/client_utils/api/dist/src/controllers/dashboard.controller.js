import DashboardService from '../services/dashboard.service';
import Joi from 'joi';
import SafeError from '../safeError';
import safeReturn from '../safeReturn';
class DashboardController extends DashboardService {
    async createListing(req, res) {
        const { name, reviews_url, description } = req.body;
        const userId = req.user.id;
        try {
            const schema = Joi.object({
                name: Joi.string().max(20).required(),
                reviews_url: Joi.string().uri().required(),
                description: Joi.string().optional()
            });
            const { error } = schema.validate({
                name,
                reviews_url,
                description
            });
            if (error) {
                throw new SafeError(error.message, true);
            }
            const listing = await this._createListing(userId, name, reviews_url, description);
            if (!listing) {
                throw new SafeError('Listing not created', true);
            }
            res.status(200).json({
                message: 'Listing created'
            });
        }
        catch (err) {
            return safeReturn(res, err);
        }
    }
    async getListing(req, res) {
        const { name } = req.query;
        const userId = req.user.id;
        const schema = Joi.object({
            name: Joi.string().max(20).optional()
        });
        try {
            const { error } = schema.validate({
                name
            });
            if (error) {
                throw new SafeError(error.message, true);
            }
            const listing = await this._getListing(userId, name);
            if (!listing) {
                throw new SafeError('Listing not found', true);
            }
            res.status(200).json({
                message: 'Listing found',
                listing
            });
        }
        catch (err) {
            return safeReturn(res, err);
        }
    }
    async fetchReviews(req, res) {
        const { listingId } = req.query;
        const userId = req.user.id;
        const schema = Joi.object({
            listingId: Joi.number().required()
        });
        try {
            const { error } = schema.validate({
                listingId
            });
            if (error) {
                throw new SafeError(error.message, true);
            }
            const reviews = await this._fetchReviews(Number(userId), Number(listingId));
            if (!reviews) {
                throw new SafeError('Reviews not found', true);
            }
            res.status(200).json({
                message: 'Reviews found',
                reviews
            });
        }
        catch (err) {
            return safeReturn(res, err);
        }
    }
}
export default DashboardController;
//# sourceMappingURL=dashboard.controller.js.map