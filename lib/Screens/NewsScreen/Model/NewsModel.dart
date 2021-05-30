class NewsModel {
  int id = 0;
  String newsSource = "";
  String newsAuthor = "";
  String newsTitle = "";
  String newsDescription = "";
  String newsUrl = "";
  String newsImage = "";
  String newsPublishedAt = "";

  NewsModel({
    required this.id,
    required this.newsSource,
    required this.newsAuthor,
    required this.newsTitle,
    required this.newsDescription,
    required this.newsUrl,
    required this.newsImage,
    required this.newsPublishedAt,
  });
}
