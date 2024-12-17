// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back`
  String get welcomeMessage {
    return Intl.message(
      'Welcome back',
      name: 'welcomeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Enter the required details to access your account and find the right mentor for you`
  String get welcomeMessageContent {
    return Intl.message(
      'Enter the required details to access your account and find the right mentor for you',
      name: 'welcomeMessageContent',
      desc: '',
      args: [],
    );
  }

  /// `Create an Account`
  String get createAccountMessage {
    return Intl.message(
      'Create an Account',
      name: 'createAccountMessage',
      desc: '',
      args: [],
    );
  }

  /// `Start your journey with Mentorea and connect with expert mentors today`
  String get createAccountMessageContent {
    return Intl.message(
      'Start your journey with Mentorea and connect with expert mentors today',
      name: 'createAccountMessageContent',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Google`
  String get continueWithGoogle {
    return Intl.message(
      'Continue with Google',
      name: 'continueWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Continue with LinkedIn`
  String get continueWithLinkedIn {
    return Intl.message(
      'Continue with LinkedIn',
      name: 'continueWithLinkedIn',
      desc: '',
      args: [],
    );
  }

  /// `I don’t have an account`
  String get IDontHaveAnAccount {
    return Intl.message(
      'I don’t have an account',
      name: 'IDontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `I already have an account`
  String get IAlreadyHaveAnAccount {
    return Intl.message(
      'I already have an account',
      name: 'IAlreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get Continue {
    return Intl.message(
      'Continue',
      name: 'Continue',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Email and Password`
  String get emailAndPasswordStep {
    return Intl.message(
      'Email and Password',
      name: 'emailAndPasswordStep',
      desc: '',
      args: [],
    );
  }

  /// `Personal Information`
  String get personalInformationStep {
    return Intl.message(
      'Personal Information',
      name: 'personalInformationStep',
      desc: '',
      args: [],
    );
  }

  /// `Your Career`
  String get yourCareerStep {
    return Intl.message(
      'Your Career',
      name: 'yourCareerStep',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Select your field of study`
  String get selectYourFieldOfStudy {
    return Intl.message(
      'Select your field of study',
      name: 'selectYourFieldOfStudy',
      desc: '',
      args: [],
    );
  }

  /// `Your Goal`
  String get yourGoal {
    return Intl.message(
      'Your Goal',
      name: 'yourGoal',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgotPasswordTitle {
    return Intl.message(
      'Forgot Password',
      name: 'forgotPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email to receive a one-time password (OTP) for resetting your password.`
  String get forgotPasswordContent {
    return Intl.message(
      'Enter your email to receive a one-time password (OTP) for resetting your password.',
      name: 'forgotPasswordContent',
      desc: '',
      args: [],
    );
  }

  /// `Send Code`
  String get sendCode {
    return Intl.message(
      'Send Code',
      name: 'sendCode',
      desc: '',
      args: [],
    );
  }

  /// `Enter Verification Code`
  String get verificationCodeTitle {
    return Intl.message(
      'Enter Verification Code',
      name: 'verificationCodeTitle',
      desc: '',
      args: [],
    );
  }

  /// `We have to sent the verification code to\n`
  String get verificationCodeContent {
    return Intl.message(
      'We have to sent the verification code to\n',
      name: 'verificationCodeContent',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Resend code after`
  String get resendCodeAfter {
    return Intl.message(
      'Resend code after',
      name: 'resendCodeAfter',
      desc: '',
      args: [],
    );
  }

  /// `Enter New Password`
  String get enterNewPasswordTitle {
    return Intl.message(
      'Enter New Password',
      name: 'enterNewPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your new password`
  String get enterNewPasswordContent {
    return Intl.message(
      'Please enter your new password',
      name: 'enterNewPasswordContent',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get changePassword {
    return Intl.message(
      'Change Password',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `Password Update Successfully`
  String get passwordUpdateSuccessfullyTitle {
    return Intl.message(
      'Password Update Successfully',
      name: 'passwordUpdateSuccessfullyTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your password has been\n updated successfully`
  String get passwordUpdateSuccessfullyContent {
    return Intl.message(
      'Your password has been\n updated successfully',
      name: 'passwordUpdateSuccessfullyContent',
      desc: '',
      args: [],
    );
  }

  /// `Back to Login`
  String get backToLogin {
    return Intl.message(
      'Back to Login',
      name: 'backToLogin',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get Home {
    return Intl.message(
      'Home',
      name: 'Home',
      desc: '',
      args: [],
    );
  }

  /// `Explore`
  String get Explore {
    return Intl.message(
      'Explore',
      name: 'Explore',
      desc: '',
      args: [],
    );
  }

  /// `Bookings`
  String get Bookings {
    return Intl.message(
      'Bookings',
      name: 'Bookings',
      desc: '',
      args: [],
    );
  }

  /// `Community`
  String get Community {
    return Intl.message(
      'Community',
      name: 'Community',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get Profile {
    return Intl.message(
      'Profile',
      name: 'Profile',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get EditProfile {
    return Intl.message(
      'Edit Profile',
      name: 'EditProfile',
      desc: '',
      args: [],
    );
  }

  /// `Personal Information`
  String get PersonalInformation {
    return Intl.message(
      'Personal Information',
      name: 'PersonalInformation',
      desc: '',
      args: [],
    );
  }

  /// `Card details`
  String get CardDetails {
    return Intl.message(
      'Card details',
      name: 'CardDetails',
      desc: '',
      args: [],
    );
  }

  /// `Manage notifications`
  String get ManageNotifications {
    return Intl.message(
      'Manage notifications',
      name: 'ManageNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get Settings {
    return Intl.message(
      'Settings',
      name: 'Settings',
      desc: '',
      args: [],
    );
  }

  /// `Privacy policy`
  String get PrivacyPolicy {
    return Intl.message(
      'Privacy policy',
      name: 'PrivacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get Logout {
    return Intl.message(
      'Logout',
      name: 'Logout',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get darkMode {
    return Intl.message(
      'Dark Mode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `Mentorea`
  String get Mentorea {
    return Intl.message(
      'Mentorea',
      name: 'Mentorea',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
