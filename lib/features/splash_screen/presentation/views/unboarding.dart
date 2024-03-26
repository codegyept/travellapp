// TODO move to another location and renaming
class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(title: 'Discover Incredible', image: 'assets/images/img1.png', discription: "Experiences Worldwide"),
  UnbordingContent(
      title: 'Let’s start planning..', image: 'assets/images/img2.png', discription: "Let’s start planning.."),
  UnbordingContent(
      title: 'Choose your experiences', image: 'assets/images/img3.png', discription: "Let’s start planning..."),
  UnbordingContent(
    title: 'Choose your experiences',
    image: 'assets/images/img4.png',
    discription: "Choose your experiences",
  )
];
