class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils(
      {required this.image,
      required this.title,
      required this.subtitle,
      this.androLink,
      this.iosLink,
      this.webLink});
}

// ###### HOBBY PROJECTS

List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/leafylodge.png',
    title: 'LeafyLodge Rental App',
    subtitle: 'I Develope This Apps UI using Flutter for my Practices',
  ),
  ProjectUtils(
    image: 'assets/projects/reddit.png',
    title: 'Reddit',
    subtitle: 'I Develope Reddit Login Screen using Flutter for my Practices',
  ),
];

// ##### WORK PROJECTS

List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/zipbuzz.png',
    title: 'Zipbuzz',
    subtitle:
        'I Develope Zipbuzz Home Screen UI/UX using Flutter for my Client as a Freelancer. While doing this I Learn how to deal with Real World Projects.',
  ),
  ProjectUtils(
    image: 'assets/projects/login.png',
    title: 'Login Screen',
    subtitle:
        'I Develope This Login Screen UI using Flutter for my Client as a Freelancer',
  ),
];
