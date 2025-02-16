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

  /// `Welcome to Mentorea! Please log in to start guiding and empowering the next generation`
  String get mentorWelcomeMessageContent {
    return Intl.message(
      'Welcome to Mentorea! Please log in to start guiding and empowering the next generation',
      name: 'mentorWelcomeMessageContent',
      desc: '',
      args: [],
    );
  }

  /// `Become a mentor on Mentorea! Register now to share your expertise and help mentees grow`
  String get mentorCreateAccountMessageContent {
    return Intl.message(
      'Become a mentor on Mentorea! Register now to share your expertise and help mentees grow',
      name: 'mentorCreateAccountMessageContent',
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

  /// `basic Information`
  String get basicInformation {
    return Intl.message(
      'basic Information',
      name: 'basicInformation',
      desc: '',
      args: [],
    );
  }

  /// `Additional Details`
  String get additionalDetails {
    return Intl.message(
      'Additional Details',
      name: 'additionalDetails',
      desc: '',
      args: [],
    );
  }

  /// `Experience Work`
  String get experienceWork {
    return Intl.message(
      'Experience Work',
      name: 'experienceWork',
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

  /// `Dashboard`
  String get dashboard {
    return Intl.message(
      'Dashboard',
      name: 'dashboard',
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

  /// `Theme Mode`
  String get themeMode {
    return Intl.message(
      'Theme Mode',
      name: 'themeMode',
      desc: '',
      args: [],
    );
  }

  /// `System`
  String get system {
    return Intl.message(
      'System',
      name: 'system',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get light {
    return Intl.message(
      'Light',
      name: 'light',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get dark {
    return Intl.message(
      'Dark',
      name: 'dark',
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

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get changeLanguage {
    return Intl.message(
      'Change Language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Select your language`
  String get selectYourLanguage {
    return Intl.message(
      'Select your language',
      name: 'selectYourLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Rate Us`
  String get rateUs {
    return Intl.message(
      'Rate Us',
      name: 'rateUs',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get deleteAccount {
    return Intl.message(
      'Delete Account',
      name: 'deleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Likes`
  String get likes {
    return Intl.message(
      'Likes',
      name: 'likes',
      desc: '',
      args: [],
    );
  }

  /// `Comments`
  String get comments {
    return Intl.message(
      'Comments',
      name: 'comments',
      desc: '',
      args: [],
    );
  }

  /// `Repost`
  String get repost {
    return Intl.message(
      'Repost',
      name: 'repost',
      desc: '',
      args: [],
    );
  }

  /// `Publish Post`
  String get publishPost {
    return Intl.message(
      'Publish Post',
      name: 'publishPost',
      desc: '',
      args: [],
    );
  }

  /// `write your post here`
  String get writeYourPostHere {
    return Intl.message(
      'write your post here',
      name: 'writeYourPostHere',
      desc: '',
      args: [],
    );
  }

  /// `Overview`
  String get overView {
    return Intl.message(
      'Overview',
      name: 'overView',
      desc: '',
      args: [],
    );
  }

  /// `sessions`
  String get sessions {
    return Intl.message(
      'sessions',
      name: 'sessions',
      desc: '',
      args: [],
    );
  }

  /// `Session`
  String get session {
    return Intl.message(
      'Session',
      name: 'session',
      desc: '',
      args: [],
    );
  }

  /// `years`
  String get years {
    return Intl.message(
      'years',
      name: 'years',
      desc: '',
      args: [],
    );
  }

  /// `year`
  String get year {
    return Intl.message(
      'year',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get reviews {
    return Intl.message(
      'Reviews',
      name: 'reviews',
      desc: '',
      args: [],
    );
  }

  /// `Review`
  String get review {
    return Intl.message(
      'Review',
      name: 'review',
      desc: '',
      args: [],
    );
  }

  /// `Education`
  String get education {
    return Intl.message(
      'Education',
      name: 'education',
      desc: '',
      args: [],
    );
  }

  /// `Skills`
  String get skills {
    return Intl.message(
      'Skills',
      name: 'skills',
      desc: '',
      args: [],
    );
  }

  /// `Experience`
  String get Experience {
    return Intl.message(
      'Experience',
      name: 'Experience',
      desc: '',
      args: [],
    );
  }

  /// `Mentor`
  String get mentor {
    return Intl.message(
      'Mentor',
      name: 'mentor',
      desc: '',
      args: [],
    );
  }

  /// `Mentee`
  String get mentee {
    return Intl.message(
      'Mentee',
      name: 'mentee',
      desc: '',
      args: [],
    );
  }

  /// `Academic degree`
  String get degreeEducation {
    return Intl.message(
      'Academic degree',
      name: 'degreeEducation',
      desc: '',
      args: [],
    );
  }

  /// `Field of study`
  String get fieldOfStudy {
    return Intl.message(
      'Field of study',
      name: 'fieldOfStudy',
      desc: '',
      args: [],
    );
  }

  /// `Enter your age`
  String get enterYourAge {
    return Intl.message(
      'Enter your age',
      name: 'enterYourAge',
      desc: '',
      args: [],
    );
  }

  /// `Select a category`
  String get selectACategory {
    return Intl.message(
      'Select a category',
      name: 'selectACategory',
      desc: '',
      args: [],
    );
  }

  /// `Select specialization`
  String get selectSpecialization {
    return Intl.message(
      'Select specialization',
      name: 'selectSpecialization',
      desc: '',
      args: [],
    );
  }

  /// `Job Title`
  String get jobTitle {
    return Intl.message(
      'Job Title',
      name: 'jobTitle',
      desc: '',
      args: [],
    );
  }

  /// `Years of experience`
  String get yearsOfExperience {
    return Intl.message(
      'Years of experience',
      name: 'yearsOfExperience',
      desc: '',
      args: [],
    );
  }

  /// `Add Image`
  String get addImage {
    return Intl.message(
      'Add Image',
      name: 'addImage',
      desc: '',
      args: [],
    );
  }

  /// `Choose your gender`
  String get chooseYourGender {
    return Intl.message(
      'Choose your gender',
      name: 'chooseYourGender',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Search for your mentor`
  String get searchForYourMentor {
    return Intl.message(
      'Search for your mentor',
      name: 'searchForYourMentor',
      desc: '',
      args: [],
    );
  }

  /// `Recommended for you`
  String get recommendedForYou {
    return Intl.message(
      'Recommended for you',
      name: 'recommendedForYou',
      desc: '',
      args: [],
    );
  }

  /// `Top Rated`
  String get topRated {
    return Intl.message(
      'Top Rated',
      name: 'topRated',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get seeAll {
    return Intl.message(
      'See All',
      name: 'seeAll',
      desc: '',
      args: [],
    );
  }

  /// `Top Skills`
  String get topSkills {
    return Intl.message(
      'Top Skills',
      name: 'topSkills',
      desc: '',
      args: [],
    );
  }

  /// `Online`
  String get online {
    return Intl.message(
      'Online',
      name: 'online',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get message {
    return Intl.message(
      'Message',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `Pubilsh Post`
  String get pubilshPost {
    return Intl.message(
      'Pubilsh Post',
      name: 'pubilshPost',
      desc: '',
      args: [],
    );
  }

  /// `Content`
  String get content {
    return Intl.message(
      'Content',
      name: 'content',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get status {
    return Intl.message(
      'Status',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start {
    return Intl.message(
      'Start',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `search by name`
  String get searchByName {
    return Intl.message(
      'search by name',
      name: 'searchByName',
      desc: '',
      args: [],
    );
  }

  /// `Find the right mentor for you`
  String get FindTheRightMentorTitle {
    return Intl.message(
      'Find the right mentor for you',
      name: 'FindTheRightMentorTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enhance your skills and gain knowledge with top experts – make learning an inspiring journey!`
  String get FindTheRightMentorContent {
    return Intl.message(
      'Enhance your skills and gain knowledge with top experts – make learning an inspiring journey!',
      name: 'FindTheRightMentorContent',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get pending {
    return Intl.message(
      'Pending',
      name: 'pending',
      desc: '',
      args: [],
    );
  }

  /// `Confirmed`
  String get confirmed {
    return Intl.message(
      'Confirmed',
      name: 'confirmed',
      desc: '',
      args: [],
    );
  }

  /// `Cancelled`
  String get cancelled {
    return Intl.message(
      'Cancelled',
      name: 'cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Choose Account Type`
  String get chooseAccountType {
    return Intl.message(
      'Choose Account Type',
      name: 'chooseAccountType',
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
