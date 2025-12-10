import 'package:dio/dio.dart';
import 'package:news_app/Models/article_model.dart';

class NewsService {
  final Dio dio = Dio();
  dynamic response;

  Future<List<ArticleModel>> getNews(String category) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=1023d64c4db74bf0ba7bc991fd12b9fe&category=$category";
    try {
      Response response = await dio.get(url);

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articlesData = jsonData['articles'];
      List<ArticleModel> articles = [];

      for (var article in articlesData) {
        ArticleModel object = ArticleModel.fromJson(article);

        articles.add(object);
      }
      return articles;
    } on Exception {
      return [];
    }
  }
}
