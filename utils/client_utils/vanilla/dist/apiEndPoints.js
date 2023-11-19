export const APIEndpoints = {
  signUp: "/auth/signup",
  login: "/auth/login",
  updateProfile: "/profile/update",
  verifyEmail: (code) => `/auth/verify?code=${code}`,
  resendEmailVerification: "/auth/request-email-verif",
  fetchProfile: "/profile/fetch",
  forgotPassword: "/recovery/forgot-password",
  resetPassword: "/recovery/reset-password",
};
