class News {
  final int id;
  final String title;
  final String newsType;
  final String? content;
  final String coverImage;

  News({
    required this.id,
    required this.title,
    required this.newsType,
    this.content,
    required this.coverImage,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      id: json['id'],
      title: json['title'],
      newsType: json['news_type'],
      content: json['content'],
      coverImage: json['cover_image'],
    );
  }
}
