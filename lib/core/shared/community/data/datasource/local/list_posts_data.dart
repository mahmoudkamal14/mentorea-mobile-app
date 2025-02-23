class PostsData {
  final UserData userData;
  final int numOfLikes;
  final int numOfComments;
  final String body;
  final String? image;

  PostsData({
    required this.userData,
    required this.numOfLikes,
    required this.numOfComments,
    required this.body,
    this.image,
  });
}

class UserData {
  final String image;
  final String name;
  final String job;

  UserData({required this.image, required this.name, required this.job});
}

List<PostsData> listOfPosts = [
  PostsData(
    userData: UserData(
      image: 'assets/images/mentor1.png',
      name: 'Daniel Harrison',
      job: 'Senior Back-End Developer',
    ),
    numOfLikes: 34,
    numOfComments: 12,
    body:
        'Web development involves creating websites and web applications. It includes front-end development (HTML, CSS, JavaScript) and back-end development (Node.js, Django, ASP.NET). Developers build responsive, user-friendly interfaces and ensure smooth server-side operations. Full-stack developers handle both ends. Web development is crucial for businesses, e-commerce, and digital services.',
  ),
  PostsData(
    userData: UserData(
      image: 'assets/images/mentor2.png',
      name: 'Michael Carter',
      job: 'Senior Back-End Developer',
    ),
    numOfLikes: 34,
    numOfComments: 12,
    body:
        'Mobile development focuses on building applications for smartphones and tablets. Native apps use Swift (iOS) or Kotlin (Android), while cross-platform apps use Flutter or React Native. Performance and UI design are key factors. Apps can be for gaming, productivity, social media, and more. The mobile industry continues to grow rapidly.',
  ),
  PostsData(
    userData: UserData(
      image: 'assets/images/mentor3.png',
      name: 'James Mitchell',
      job: 'Senior Back-End Developer',
    ),
    numOfLikes: 34,
    numOfComments: 12,
    body:
        'AI & ML enable computers to learn from data and make decisions. Python libraries like TensorFlow and Scikit-learn are popular in this field. AI powers chatbots, recommendation systems, and autonomous vehicles. Data is the fuel for AI models. The demand for AI experts is increasing globally.',
  ),
  PostsData(
    userData: UserData(
      image: 'assets/images/mentor4.png',
      name: 'Robert Dawson',
      job: 'Senior Back-End Developer',
    ),
    numOfLikes: 34,
    numOfComments: 12,
    body:
        'Game development involves designing and coding video games. Popular engines include Unity (C#) and Unreal Engine (C++). Developers create game mechanics, graphics, and AI behavior. Games range from mobile apps to AAA console titles. Creativity and problem-solving are essential in this field.',
  ),
  PostsData(
    userData: UserData(
      image: 'assets/images/mentor5.png',
      name: 'William Hayes',
      job: 'Senior Back-End Developer',
    ),
    numOfLikes: 34,
    numOfComments: 12,
    body:
        'Software testing ensures applications work correctly and securely. QA engineers use manual and automated testing tools like Selenium and JUnit. Testing types include unit, integration, and performance testing. High-quality software enhances user experience and reduces bugs. QA is crucial in software development life cycles.',
  ),
  PostsData(
    userData: UserData(
      image: 'assets/images/mentor6.png',
      name: 'Henry Turner',
      job: 'Senior Back-End Developer',
    ),
    numOfLikes: 34,
    numOfComments: 12,
    body:
        'Embedded systems control hardware devices using software. IoT (Internet of Things) connects smart devices to the internet. Programming languages like C and Python are used. IoT applications include smart homes, wearables, and industrial automation. The demand for connected devices is growing rapidly.',
  ),
];
