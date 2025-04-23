import 'package:json_annotation/json_annotation.dart';

part 'change_password_request_body.g.dart';

@JsonSerializable()
class ChangePasswordRequestBody {
  ChangePasswordRequestBody({
    required this.currentPassword,
    required this.newPassword,
  });

  @JsonKey(name: 'CurrentPassword')
  final String currentPassword;

  @JsonKey(name: 'NewPassword')
  final String newPassword;

  Map<String, dynamic> toJson() => _$ChangePasswordRequestBodyToJson(this);
}
