class GeneratedImage {
  final String imageUrl;

  GeneratedImage(
      {required this.imageUrl});

  factory GeneratedImage.fromJson(Map<dynamic, dynamic> json) {
    return GeneratedImage(
      imageUrl: json['imageUrl']
    );
  }
}