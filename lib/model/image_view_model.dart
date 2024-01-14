class ImageView {
  final String path;
  final bool isMain;

  ImageView({
    required this.path,
    required this.isMain,
  });

  factory ImageView.fromJson(Map<String, dynamic> json) {
    return ImageView(
      path: json['path'],
      isMain: json['is_main'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'path': path,
      'is_main': isMain,
    };
  }
}
