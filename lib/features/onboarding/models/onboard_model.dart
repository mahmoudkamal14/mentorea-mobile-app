class OnboardItemModel{
  String title ;
  String image;
  String subtitle;
  String buttonText;
  OnboardItemModel({required this.buttonText,required this.subtitle,required this.title,required this.image});

}
List<OnboardItemModel> onboardItemsData=[
  OnboardItemModel(buttonText: '➜', subtitle: "Experience the power of real-time communication! Whether it's chat, audio, or video, our platform ensures smooth, secure, and instant interactions between mentors and mentees.", title: "🚀 Instant , seamless", image: 'assets/images/onboard1.png'),
  OnboardItemModel(buttonText: '➜', subtitle: 'Engage with like-minded individuals in our vibrant community! Share your challenges, ask questions, and gain insights from mentors and peers. Collaborate, grow, and contribute to a space built for your success. Together, we achieve more!', title: '🌟 Join a Thriving Community', image: 'assets/images/onboard2.png'),
  OnboardItemModel(buttonText: '➜', subtitle: "Easily discover mentors who match your goals and aspirations! Use advanced filters to search by expertise, experience, availability, and more. Whether you're looking for career advice, skill development, or personal growth, our platform connects you with the ideal mentor to guide your journey.", title: '🔍 Find Your Perfect Guide', image: 'assets/images/onboard5.png'),
];