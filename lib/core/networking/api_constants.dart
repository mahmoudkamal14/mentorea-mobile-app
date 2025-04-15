class ApiConstants {
  static const String baseUrl = 'https://safety.runasp.net/api';

  // Authentication Endpoints
  static const String login = '/Authentication/Login';
  static const String clientRegister = '/Authentication/Register';
  static const String confirmEmail = '/Authentication/Confirm-Email';
  static const String resendOtpConfirmEmail =
      '/Authentication/Resend-EmailConfirmation-Otp';
  static const String forgotPassword = '/Authentication/Forgot-Password';
  static const String resendOtpResetPassword =
      '/Authentication/Resend-PasswordReset-Otp';
  static const String resetPassword = '/Authentication/Reset-Password';

  static const String refreshToken = '/Authentication/Refresh-Token';
  static const String logout = '/Authentication/Logout';
  static const String getProfile = '/Authentication';

  // Client
  static const String updateClient = '/Client';

  // Problems
  static const String addProblem = '/Problem';
  static const String clientProblems = '/Problem/client';
  static const String technicianProblems = '/Problem/technician';
  static const String getAllProblems = '/Problem';
  static const String getProblemById = '/Problem/{id}';
  static const String getProblemByStatus = '/Problem/status/{id}';
  static const String deleteProblem = '/Problem/{id}';
  static const String updateProblem = '/Problem/{id}';
  static const String updateProblemImage = '/Problem/image/{id}';
  static const String updateProblemStatus = '/Problem/status/{id}';
  static const String assignProblemToTechnician =
      '/Problem/{problemId}/assign/{technicianId}';

  // Admin
  static const String addTechnician = '/Technician';
  static const String deleteTechnician = '/Technician/{id}';
  static const String updateTechnician = '/Technician/{id}';
  static const String getTechnician = '/Technician/{id}';
  static const String getAllTechnicians = '/Technician/all';
  static const String addEngineer = '/Engineer';
  static const String deleteEngineer = '/Engineer/{id}';
  static const String updateEngineer = '/Engineer/{id}';
  static const String getEngineer = '/Engineer/{id}';
  static const String getAllEngineers = '/Engineer/all';

  // Problem Type
  static const String addProblemType = '/ProblemType';
  static const String updateProblemType = '/ProblemType/{id}';
  static const String deleteProblemType = '/ProblemType/{id}';
  static const String getProblemType = '/ProblemType/{id}';
  static const String getAllProblemType = '/ProblemType';
}
