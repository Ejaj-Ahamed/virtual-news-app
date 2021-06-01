import 'package:get/get.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:virtual_news_app/Screens/NewsScreen/Model/NewsModel.dart';

class NewsController extends GetxController {
  Future<List<NewsModel>> getAllNews() async {
    List<NewsModel> newsModel = [];
    String url =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=c1ae55eafcd946558680c0a6c647426d";
    Uri myUri = Uri.parse(url);
    var response = await http.get(myUri);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      newsModel = fromJson(jsonResponse);
    } else {
      newsModel
          .add(new NewsModel("", "", "", "", "", "", "", "No New News Found"));
    }
    return newsModel;
  }

  List<NewsModel> fromJson(dynamic jsonObject) {
    List<NewsModel> nm = [];
    dynamic articles = jsonObject['articles'];
    for (int i = 0; i < articles.length; i++) {
      dynamic article = articles[i];
      dynamic source = article['source'];
      String newsSource = source['name'];
      String newsAuthor = article['author'];
      String newsTitle = article['title'];
      String newsDescription = article['description'];
      String newsUrl = article['url'];
      String newsImage = article['urlToImage'];
      String newsPublishedAt = article['publishedAt'];
      String responseMessge = "";
      nm.add(new NewsModel(newsSource, newsAuthor, newsTitle, newsDescription,
          newsUrl, newsImage, newsPublishedAt, responseMessge));
    }
    return nm;
  }
}
