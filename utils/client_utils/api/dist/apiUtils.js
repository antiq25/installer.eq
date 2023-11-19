import axios from 'axios';
const errorInterceptor = (config) => {
    return config;
};
const apiClient = axios.create({
    baseURL: 'http://localhost:3000/api/v1',
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
export const authAPI = {
    signup: (data) => apiCall('signUp', () => apiClient.post(authAPIEndpoints.signUp, data), 'Signup successful', 'Signup failed'),
    login: async (data) => {
        const response = await apiCall('login', () => apiClient.post(authAPIEndpoints.login, data), 'Login successful', 'Login failed');
        const { success, data: responseData } = response;
        if (success && responseData?.token?.token) {
            localStorage.setItem('token', responseData.token.token);
        }
        return response;
    },
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