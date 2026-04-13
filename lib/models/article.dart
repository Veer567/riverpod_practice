class Article {
  final String title;
  final String? description;
  final String? urlToImage;
  final String url;
  final String? publishedAt;
  final String sourceName;

  const Article({
    required this.title,
    this.description,
    this.urlToImage,
    required this.url,
    this.publishedAt,
    required this.sourceName,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      title: json['title'] ?? '',
      description: json['description'],
      urlToImage: json['urlToImage'],
      url: json['url'] ?? '',
      publishedAt: json['publishedAt'],
      sourceName: json['source']?['name'] ?? 'Unknown',
    );
  }

}