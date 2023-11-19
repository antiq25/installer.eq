class SafeError extends Error {
    forClient;
    constructor(message, forClient = false) {
        super(message);
        this.name = 'SafeError';
        this.forClient = forClient;
    }
}
export default SafeError;
//# sourceMappingURL=safeError.js.map