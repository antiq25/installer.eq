
  import { apiClient } from "../dist/apiConfig.js";

  const apiSwitch = async (type, ...args) => {
    switch (type) {
      case "signUp":
        return await signUp(...args);
      case "login":
        return await login(...args);
      case "verifyEmail":
        return await handleVerifyEmail(...args);
      case "fetchProfile":
        return await handlefetchProfile(...args);
      case "updateProfile":
        return await handleUpdateProfile(...args);
      case "forgotPassword":
        return await handleForgotPassword(...args);
      case "resetPassword":
        return await handleResetPassword(...args);
      default:
        throw new Error("Invalid API call type");
    }
  };

  const apiCall = async (type, apiFunc, successMessage, errorMessage) => {
    try {
      await apiFunc();
      showSuccessMessage(type, successMessage);
    } catch (error) {
      showErrorMessage(type, errorMessage || error);
    }
  };

  const signUp = async (signupData) =>
    apiCall(
      "signUp",
      () => apiClient.post("/auth/signup", signupData),
      "Signup successful",
      "Signup failed"
    );

  const login = async (signinData) =>
    apiCall(
      "login",
      () => apiClient.post("/auth/login", signinData),
      "Login successful",
      "Login failed"
    );

  const handleVerifyEmail = async (token, verificationCode) =>
    apiCall(
      "verifyEmail",
      () =>
        apiClient.get(`/auth/verify?code=${verificationCode}`, {
          headers: { Authorization: `Bearer ${token}` },
        }),
      "Email verified",
      "Email verification failed"
    );

  const handlefetchProfile = async (token) =>
    apiCall(
      "fetchProfile",
      () =>
        apiClient.get("/auth/profile", {
          headers: { Authorization: `Bearer ${token}` },
        }),
      "Profile fetched",
      "Profile fetch failed"
    );

  const handleUpdateProfile = async (token, updateData) =>
    apiCall(
      "updateProfile",
      () =>
        apiClient.put("/auth/profile", updateData, {
          headers: { Authorization: `Bearer ${token}` },
        }),
      "Profile updated",
      "Profile update failed"
    );

  const handleForgotPassword = async (email) =>
    apiCall(
      "forgotPassword",
      () => apiClient.post("/auth/forgot-password", { email }),
      "Password reset link sent",
      "Password reset link failed"
    );

  const handleResetPassword = async (token, resetData) =>
    apiCall(
      "resetPassword",
      () =>
        apiClient.post("/auth/reset-password", resetData, {
          headers: { Authorization: `Bearer ${token}` },
        }),
      "Password reset successful",
      "Password reset failed"
    );

  export const showSuccessMessage = (type, message) =>
    console.log(generateMessage("success", type, message));
  export const showErrorMessage = (type, message) =>
    console.log(generateMessage("error", type, message));
  export const generateMessage = (messageType, type, message) =>
    `[${messageType.toUpperCase()}] ${type}: ${message}`;

  export { apiSwitch };