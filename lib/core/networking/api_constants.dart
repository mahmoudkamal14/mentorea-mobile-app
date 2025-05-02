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

  // Community Endpoints
  static const String getAllPost = '/api/Post';
  static const String getPostDetails = '/api/post/{postId}';
  static const String getPostsFollowingMentors = '/api/post/followed';
  static const String createPost = '/api/Post';
  static const String updatePost = '/api/Post/{postId}';
  static const String deletePost = '/api/Post/{postId}';

  static const String getCommentPost = '/api/Post/{postId}/comment/{commentId}';
  static const String getAllCommentsPost = '/api/Post/{postId}/comment';
  static const String createComment = '/api/Post/{postId}/comment';
  static const String updateComment = '/api/Post/{postId}/comment/{commentId}';
  static const String deleteComment = '/api/Post/{postId}/comment/{commentId}';

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
}
