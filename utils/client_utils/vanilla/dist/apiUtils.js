import axios from '../dist/axios.min.js';
const errorInterceptor = (config) => {
    return config;
};
const apiClient = axios.create({
    baseURL: 'https://localhost:4443/api/v1',
    headers: {
        'Content-Type': 'application/json'
    },
    withCredentials: true
});
apiClient.interceptors.request.use(errorInterceptor, error => {
    console.error("Error in request interceptor:", error);
    return Promise.reject(error);
});
// **************************//**************************
//                        API CALL
// **** **********************//*************************
const apiCall = async (type, call, successMessage, errorMessagePrefix) => {
    try {
        const response = await call();
        showSuccessMessage(type, successMessage);
        return {
            success: true,
            data: response.data
        };
    }
    catch (error) {
        const errorMessage = error.response?.data?.message || errorMessagePrefix;
        showErrorMessage(type, `${errorMessagePrefix}: ${errorMessage}`);
        return {
            success: false,
            error: errorMessage
        };
    }
};
// **************************//**************************
//                      START AUTH CALLS
// **** **********************//*************************
export const signUp = async (signupData) => apiCall('signUp', () => apiClient.post('/auth/signup', signupData), 'Signup successful', 'Signup failed');
export const login = async (signinData) => apiCall('login', () => apiClient.post('/auth/login', signinData), 'Login successful', 'Login failed');
export const handleVerifyEmail = async (token, verificationCode) => apiCall('verifyEmail', () => apiClient.get(`/auth/verify?code=${verificationCode}`, { headers: { Authorization: `Bearer ${token}` } }), 'Email verified', 'Email verification failed');
// **************************//**************************
//                      START PROFILE CALLS
// **** **********************//*************************
export const handleFetchProfile = async (token) => apiCall('fetchProfile', () => apiClient.get('/profile/fetch', { headers: { Authorization: `Bearer ${token}` } }), 'Profile fetched', 'Fetching profile failed');
export const handleUpdateProfile = async (token, firstName, lastName) => apiCall('updateProfile', () => apiClient.put('/profile/update', { firstName, lastName }, { headers: { Authorization: `Bearer ${token}` } }), 'Profile updated', 'Updating profile failed');
// **************************//**************************
//                      START RECOVERY CALLS
// **** **********************//*************************
export const handleForgotPassword = async (email) => apiCall('forgotPassword', () => apiClient.post('/recovery/forgot-password', { email }), 'Forgot password email sent', 'Forgot password failed');
export const handleResetPassword = async (code, password) => apiCall('resetPassword', () => apiClient.post('/recovery/reset-password', { password, code }), 'Password reset successful', 'Password reset failed');
// **************************//**************************
//                      ERROR HELPERS
// **** **********************//*************************
export const showSuccessMessage = (type, message) => console.log(generateMessage('success', type, message));
// const showWarningMessage = (type: string, message: string) => console.log(generateMessage('warning', type, message));
export const showErrorMessage = (type, message) => console.log(generateMessage('error', type, message));
export const generateMessage = (messageType, type, message) => `[${messageType.toUpperCase()}] ${type}: ${message}`;
// **************************//**************************
//# sourceMappingURL=apiUtils.js.map