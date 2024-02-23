class Feature {
  Feature({
    required this.title,
    required this.description,
    required this.imageURL,
  });

  final String title;
  final String description;
  final String imageURL;

  static List<Feature> features = [
    Feature(
      title: 'Feature 1',
      description:
          'This is a feature that is so cool that you will not believe it.',
      imageURL: 'assets/images/feature1.png',
    ),
    Feature(
      title: 'Feature 2',
      description:
          'This is a feature that is so cool that you will not believe it.',
      imageURL: 'assets/images/feature2.png',
    ),
    Feature(
      title: 'Feature 3',
      description:
          'This is a feature that is so cool that you will not believe it.',
      imageURL: 'assets/images/feature3.png',
    ),
  ];
}
