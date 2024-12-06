class OnBoardingModel {
  final String title;
  final String image;
  final String textBody;
  final String textButton;

  OnBoardingModel({
    required this.title,
    required this.image,
    required this.textBody,
    required this.textButton,
  });
}

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    title: 'Connect with Expert Mentors',
    image: 'assets/images/undraw_active_support_re_b7sj.svg',
    textBody:
        'Find mentors specialized in your field and\n easily connect with them via chat or\n video calls. Mentorea brings\n expertise right to your fingertips.',
    textButton: 'Next',
  ),
  OnBoardingModel(
    title: 'Plan Your Sessions Easily',
    image: 'assets/images/undraw_online_learning_re_qw08.svg',
    textBody:
        'Set up convenient times for your mentoring sessions with a user-friendly interface.\n We make time management simple\n and effective.',
    textButton: 'Next',
  ),
  OnBoardingModel(
    title: 'Join to Mentorea Community',
    image: 'assets/images/undraw_engineering_team_a7n2.svg',
    textBody:
        'Be part of a thriving community of mentees and mentors. Share knowledge, collaborate, and grow together in Mentorea.',
    textButton: 'Get Started',
  ),
];
