class ResetPasswordRequestBody {
  ResetPasswordRequestBody({
    required this.email,
    required this.otp,
    required this.newPassword,
  });

  final String? email;
  final String? otp;
  final String? newPassword;

  Map<String, dynamic> toJson() => {
    "Email": email,
    "OTP": otp,
    "NewPassword": newPassword,
  };
}
