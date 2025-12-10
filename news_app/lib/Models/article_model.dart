class ArticleModel {
  String title;
  String? subtitle;
  String? image;
  String url;

  ArticleModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.url,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      subtitle: json['description'],
      url: json['url'],
    );
  }
}
