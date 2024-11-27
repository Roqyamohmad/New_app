class ArticlsModel {
  final String? image;
  final String title;
  final String? subtitle;
  final String url;
  ArticlsModel(
      {required this.url,
      required this.image,
      required this.title,
      required this.subtitle});
  factory ArticlsModel.fromJson(json) {
    return ArticlsModel(
      image: json['urlToImage'],
      title: json['title'],
      subtitle: json['description'],
      url: json['url'],
    );
  }
}
