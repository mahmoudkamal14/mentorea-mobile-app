class ApiConstants {
  static const String baseUrl = 'http://mentorea.runasp.net';

  // Authentication Endpoints
  static const String login = '/Auth/login';
  static const String registerFcmToken = '/api/DeviceToken/add-token';
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
  static const String updateProfileImage = '/me/Image';

  // Community Endpoints
  static const String getAllPost = '/api/Post';
  static const String getPostDetails = '/api/post/{postId}';
  static const String getPostsFollowingMentors = '/api/post/followed';
  static const String createPost = '/api/Post';
  static const String updatePost = '/api/Post/{postId}';
  static const String deletePost = '/api/Post/{postId}';

  static const String getCommentPost =
      '/api/posts/{postId}/Comment/{commentId}';
  static const String getAllCommentsPost = '/api/posts/{postId}/Comment';
  static const String createComment = '/api/posts/{postId}/Comment';
  static const String updateComment = '/api/posts/{postId}/Comment/{commentId}';
  static const String deleteComment = '/api/posts/{postId}/Comment/{commentId}';

  static const String toggleLikePost = '/api/posts/{postId}/Like';
  static const String countLikePost = '/api/posts/{postId}/Like/Count';
  static const String usersLikedPost = '/api/posts/{postId}/Like/user';

  static const String toggleFollowMentor = '/api/Follow';
  static const String countFollowersMentor =
      '/api/Follow/{userId}/followers/count';
  static const String countFollowingMentor =
      '/api/Follow/{userId}/followings/count';
  static const String getFollowersMentor = '/api/Follow/Mentor';
  static const String getFollowingMentor = '/api/Follow/Follower';

  // Explore Endpoints
  static const String searchMentor = '/api/result';
  static const String topRatedMentors = '/api/result';
  static const String recommendedMentors = '/api/Result/Recommended';
  static const String getMentorsBySpecialization = '/api/result/Specialization';

  // Mentor Availability Endpoints
  static const String getMentorAvailabilityList =
      '/api/mentors/{mentorId}/availability';
  static const String getMentorAvailability =
      '/api/mentors/{mentorId}/availability/{availabilityId}';
  static const String createMentorAvailability = '/api/mentors';
  static const String updateMentorAvailability =
      '/api/mentors/{availabilityId}';
  static const String deleteMentorAvailability =
      '/api/mentors/{availabilityId}';

  // Mentee Sessions
  static const String createSession = '/api/sessions';
  static const String submitSessionReport = '/api/sessions/{sessionId}/report';
  static const String setSessionOutcome = '/api/sessions/{sessionId}/outcome';
  static const String giveSessionFeedback =
      '/api/sessions/{sessionId}/feedback';
  static const String respondToSessionUpdate =
      '/api/sessions/{sessionId}/respond-to-update';

  // Mentor Sessions
  static const String updateSessionDetails = '/api/sessions/{sessionId}';
  static const String respondToSessionBeforePayment =
      '/api/sessions/{sessionId}/respond-to-update';
  static const String cancelSession = '/api/sessions/{sessionId}/cancel';

  // Shared Session
  static const String getAllSessionsByUser = '/api/sessions/user';
  static const String getSessionById = '/api/sessions/{sessionId}';
  static const String markSessionAttendedByOneParty =
      '/api/sessions/{sessionId}/attended';
}



// Admin 
// Get Payment Recipient
// Get ALL Sessions
