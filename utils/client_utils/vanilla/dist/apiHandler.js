import { apiClient } from '../dist/apiConfig.js';
import { apiCall } from '../dist/apiHelper.js';

class ApiUtils {
  static async signUp(signupData) {
    return apiCall('signUp', () => apiClient.post('/auth/signup', signupData), 'Signup successful', 'Signup failed');
  }

  static async login(signinData) {
    return apiCall('login', () => apiClient.post('/auth/login', signinData), 'Login successful', 'Login failed');
  }

  static async handleVerifyEmail(token, verificationCode) {
    return apiCall('verifyEmail', () => apiClient.get(`/auth/verify?code=${verificationCode}`, { headers: { Authorization: `Bearer ${token}` } }), 'Email verified', 'Email verification failed');
  }

  static async handleFetchProfile(token) {
    return apiCall('fetchProfile', () => apiClient.get('/profile/fetch', { headers: { Authorization: `Bearer ${token}` } }), 'Profile fetched', 'Fetching profile failed');
  }

  static async handleUpdateProfile(token, firstName, lastName) {
    return apiCall('updateProfile', () => apiClient.put('/profile/update', { firstName, lastName }, { headers: { Authorization: `Bearer ${token}` } }), 'Profile updated', 'Updating profile failed');
  }

  static async handleForgotPassword(email) {
    return apiCall('forgotPassword', () => apiClient.post('/recovery/forgot-password', { email }), 'Forgot password email sent', 'Forgot password failed');
  }

  static async handleResetPassword(code, password) {
    return apiCall('resetPassword', () => apiClient.post('/recovery/reset-password', { password, code }), 'Password reset successful', 'Password reset failed');
  }

  static showSuccessMessage(type, message) {
    console.log(this.generateMessage('success', type, message));
  }

  static showErrorMessage(type, message) {
    console.log(this.generateMessage('error', type, message));
  }

  static generateMessage(messageType, type, message) {
    return `[${messageType.toUpperCase()}] ${type}: ${message}`;
  }
}

export { ApiUtils };  
