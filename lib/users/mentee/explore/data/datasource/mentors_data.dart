class MentorInfo {
  final String image;
  final String name;
  final int experience;
  final String job;
  final int numOfSessions;
  final int numOfReviews;
  final double rate;
  final double pricePerSession;

  MentorInfo({
    required this.image,
    required this.name,
    required this.experience,
    required this.job,
    required this.numOfSessions,
    required this.numOfReviews,
    required this.rate,
    required this.pricePerSession,
  });
}

List<MentorInfo> listOfMentors = [
  MentorInfo(
    image: 'assets/images/mentor1.png',
    name: 'Daniel Harrison',
    experience: 5,
    job: 'Senior Back-End Developer',
    numOfSessions: 16,
    numOfReviews: 8,
    rate: 4.9,
    pricePerSession: 33,
  ),
  MentorInfo(
    image: 'assets/images/mentor2.png',
    name: 'Michael Carter',
    experience: 7,
    job: 'Senior Back-End Developer',
    numOfSessions: 22,
    numOfReviews: 16,
    rate: 4.5,
    pricePerSession: 17,
  ),
  MentorInfo(
    image: 'assets/images/mentor3.png',
    name: 'James Mitchell',
    experience: 6,
    job: 'Senior Back-End Developer',
    numOfSessions: 13,
    numOfReviews: 11,
    rate: 4.4,
    pricePerSession: 25,
  ),
  MentorInfo(
    image: 'assets/images/mentor4.png',
    name: 'Robert Dawson',
    experience: 6,
    job: 'Senior Back-End Developer',
    numOfSessions: 7,
    numOfReviews: 6,
    rate: 4.9,
    pricePerSession: 20,
  ),
  MentorInfo(
    image: 'assets/images/mentor5.png',
    name: 'William Hayes',
    experience: 3,
    job: 'Senior Back-End Developer',
    numOfSessions: 12,
    numOfReviews: 8,
    rate: 4.8,
    pricePerSession: 45,
  ),
  MentorInfo(
    image: 'assets/images/mentor6.png',
    name: 'Henry Turner',
    experience: 9,
    job: 'Senior Back-End Developer',
    numOfSessions: 26,
    numOfReviews: 23,
    rate: 4.6,
    pricePerSession: 37,
  ),
];
