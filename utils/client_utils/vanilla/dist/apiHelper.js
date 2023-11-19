// modular API call wrapper to handle all calls, errors, and successes.

export const apiCall = async (type, apiFunc, successMessage, errorMessage) => {
  try {
    const response = await apiFunc();
    console.log(`[SUCCESS] ${type}: ${successMessage}`);
    return {
      success: true,
      data: response.data,
    };
  } catch (error) {
    // Check if error response contains the forClient flag
    if (error.response?.data?.forClient) {
      console.error(`[ERROR] ${type}: ${error.response.data.message}`);
      return {
        success: false,
        message: error.response.data.message,
      };
    } else {
      console.error(`[ERROR] ${type}: ${errorMessage}`);
      // Return a generic message for all other errors
      return {
        success: false,
        message: "Something went wrong. Please try again later.",
      };
    }
  }
};


// create the messages + allow generation for easy import in to react / bootstsrap components
export const showSuccessMessage = (type, message) => console.log(generateMessage('success', type, message));
export const showErrorMessage = (type, message) => console.log(generateMessage('error', type, message));
export const generateMessage = (messageType, type, message) => `[${messageType.toUpperCase()}] ${type}: ${message}`;
