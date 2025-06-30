class ResentOtpForgotPasswordRewuestBody {
  ResentOtpForgotPasswordRewuestBody({required this.email});

  final String? email;

  Map<String, dynamic> toJson() => {"Email": email};
}
