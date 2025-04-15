class ResendOptConfirmEmailRequestBody {
  ResendOptConfirmEmailRequestBody({required this.email});

  final String? email;

  Map<String, dynamic> toJson() => {"Email": email};
}
