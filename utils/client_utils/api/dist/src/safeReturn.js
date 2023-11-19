import SafeError from './safeError';
const safeReturn = (res, error) => {
    if (error instanceof SafeError && error.forClient) {
        return res.status(400).json({
            message: error.message
        });
    }
    else {
        console.log(error);
        return res.status(500).json({
            message: 'Internal server error'
        });
    }
};
export default safeReturn;
//# sourceMappingURL=safeReturn.js.map