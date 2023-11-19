import axios from "../dist/axios.min.js";

export const apiClient = axios.create({
  baseURL: "http://localhost:3000/api/v1",
  headers: {
    "Content-Type": "application/json",
  },
  withCredentials: true,
});

class authAPI {
  constructor() {
    this.token = localStorage.getItem("token");
  }

  async call(method, endpoint, data = null) {
    const headers = {};

    if (this.token) {
      headers["Authorization"] = `Bearer ${this.token}`;
    }

    try {
      const response = await apiClient({
        method,
        url: endpoint,
        data,
        headers,
      });

      if (response.data?.token) {
        this.token = response.data.token;
        localStorage.setItem("token", this.token);
      }

      return {
        success: true,
        data: response.data,
      };
    } catch (error) {
      return {
        success: false,
        error: error.response?.data || "An error occurred",
      };
    }
  }

  signUp(data) {
    return this.call("post", "/auth/signup", data);
  }

  login(data) {
    return this.call("post", "/auth/login", data);
  }

  updateProfile(data) {
    return this.call("put", "/profile/update", data);
  }

  verifyEmail(code) {
    return this.call("get", `/auth/verify?code=${code}`);
  }

  resendEmailVerification(data) {
    return this.call("post", "/auth/request-email-verif", data);
  }

  fetchProfile() {
    return this.call("get", "/profile/fetch");
  }

  forgotPassword(email) {
    return this.call("post", "/recovery/forgot-password", { email });
  }

  resetPassword(data) {
    return this.call("post", "/recovery/reset-password", data);
  }
}

const apiService = new authAPI();

// Usage:
// apiService.signUp({email: '...', password: '...'});
// apiService.login({email: '...', password: '...'});
// ... and so on for other methods.
