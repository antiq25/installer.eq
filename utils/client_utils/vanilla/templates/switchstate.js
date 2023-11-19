import { apiClient } from "../dist/apiConfig.js";
import { apiCall } from "../dist/apiHelper.js";
import { APIEndpoints } from "./apiEndpoints.js";

export class APIService {
  constructor(type, data, token) {
    this.type = type;
    this.data = data;
    this.token = token;
  }

  async call() {
    switch (this.type) {
      case "signUp":
        return this.signUp();
      case "login":
        return this.login();
      case "updateProfile":
        return this.updateProfile();
      case "verifyEmail":
        return this.verifyEmail();
      case "resendEmailVerification":
        return this.resendEmailVerification();
      case "fetchProfile":
        return this.fetchProfile();
      case "forgotPassword":
        return this.forgotPassword();
      case "resetPassword":
        return this.resetPassword();
      default:
        throw new Error("Invalid API call type");
    }
  }

  // ... [Same implementations for signUp, login, updateProfile, verifyEmail]

  async resendEmailVerification() {
    return await apiCall(
      "resendEmailVerification",
      () => apiClient.post(APIEndpoints.resendEmailVerification, this.data),
      "Verification email resent",
      "Resending verification email failed"
    );
  }

  async fetchProfile() {
    const headers = {};
    if (this.token) {
      headers.Authorization = `Bearer ${this.token}`;
    }
    return await apiCall(
      "fetchProfile",
      () => apiClient.get(APIEndpoints.fetchProfile, { headers }),
      "Profile fetched",
      "Fetching profile failed"
    );
  }

  async forgotPassword() {
    return await apiCall(
      "forgotPassword",
      () => apiClient.post(APIEndpoints.forgotPassword, this.data),
      "Forgot password email sent",
      "Forgot password failed"
    );
  }

  async resetPassword() {
    return await apiCall(
      "resetPassword",
      () => apiClient.post(APIEndpoints.resetPassword, this.data),
      "Password reset successful",
      "Password reset failed"
    );
  }
}
