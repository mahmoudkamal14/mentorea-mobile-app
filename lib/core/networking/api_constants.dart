class ApiConstants {
  static const String baseUrl = 'http://mentorea.runasp.net';

  // Authentication Endpoints
  static const String login = '/Auth/login';
  static const String getAllFields = '/api/Field';
  static const String getAllSpecializations = '/api/Specializations';
  static const String mentorRegister = '/Auth/Mentor-Register';
  static const String menteeRegister = '/Auth/Mentee-Register';
  static const String confirmEmail = '/Auth/Confirm-Email';
  static const String resendOtpConfirmEmail = '/Auth/Resend-Confirm-Email';
  static const String forgotPassword = '/Auth/ForgetPassword';
  static const String resetPassword = '/Auth/RestPassword';
  static const String refreshToken = '/Auth/Refresh';
  static const String logout = '/Auth/Revoke';

  // Profile Endpoints
  static const String getMenteeProfile = '/me/mentee';
  static const String getMentorProfile = '/me/mentor';
  static const String updateMenteeProfile = '/me/mentee';
  static const String updateMentorProfile = '/me/mentor';
  static const String changePasswordAccount = '/me/ChangePassword';
}
