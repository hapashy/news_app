import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  getNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=c23c7f1bc2fb4d7a87143852c76227b7&country=eg&category=general');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];

    for (var article in articles) {
      print(article['author']);
    }
  }
}
