import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = _Initial;
  const factory SettingsState.changePasswordLoading() = ChangePasswordLoading;
  const factory SettingsState.changePasswordSuccess() = ChangePasswordSuccess;
  const factory SettingsState.changePasswordFailure({required String error}) =
      ChangePasswordFailure;

  const factory SettingsState.updateProfileLoading() = UpdateProfileLoading;
  const factory SettingsState.updateProfileSuccess() = UpdateProfileSuccess;
  const factory SettingsState.updateProfileFailure({required String error}) =
      UpdateProfileFailure;

  const factory SettingsState.logoutLoading() = LogoutLoading;
  const factory SettingsState.logoutSuccess() = LogoutSuccess;
  const factory SettingsState.logoutFailure({required String error}) =
      LogoutFailure;

  const factory SettingsState.imageSelectedSuccess() = ImageSelectedSuccess;
  const factory SettingsState.imageSelectedError() = ImageSelectedError;

  const factory SettingsState.updateProfileImageLoading() =
      UpdateProfileImageLoading;
  const factory SettingsState.updateProfileImageSuccess() =
      UpdateProfileImageSuccess;
  const factory SettingsState.updateProfileImageFailure(
      {required String error}) = UpdateProfileImageFailure;
}
