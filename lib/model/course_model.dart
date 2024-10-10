class CourseModel {
  final String name;
  final String description;
  final String duration;
  final String image;
  final String price;
  final String fullDescription;

  CourseModel(
      {required this.description,
      required this.price,
      required this.duration,
      required this.image,
      required this.name,
      required this.fullDescription});
}

List<CourseModel> coursesList = [
  CourseModel(
      name: 'Swift',
      price: "\$90",
      description: 'Advanced iOS apps',
      duration: "4 h 30 min",
      image: "assets/images/Cool Kids Staying Home.png",
      fullDescription:
          "Swift is a powerful and intuitive programming language developed by Apple.It's designed to be safe, fast, and modern, making it a great choice for iOS, macOS, watchOS, and tvOS app development."),
  CourseModel(
      fullDescription:
          "UI, or User Interface, is the visual and interactive elements of a product that users interact with to accomplish tasks.A well-designed UI makes products easy to use, intuitive, and enjoyable for users.",
      name: 'UI',
      price: "\$90",
      description: 'Advanced mobile interface',
      duration: "3 h 30 min",
      image: "assets/images/Cool Kids High Tech.png"),
  CourseModel(
      name: 'UX',
      fullDescription:
          "UI, or User Interface, is the visual and interactive elements of a product that users interact with to accomplish tasks.A well-designed UI makes products easy to use, intuitive, and enjoyable for users.",
      price: "\$90",
      description: 'Advanced web application',
      duration: "2 h 30 min",
      image: "assets/images/nopayment.png"),
  CourseModel(
      name: 'Flutter',
      fullDescription:
          "Flutter is a free and open-source UI software development kit created by Google for building cross-platform applications.It allows developers to create native-like apps for iOS, Android, web, and desktop from a single codebase.",
      price: "\$90",
      description: 'Android iOS development',
      duration: "5 h 30 min",
      image: "/Users/apple/ui_4/assets/images/notsaved.png"),
];
