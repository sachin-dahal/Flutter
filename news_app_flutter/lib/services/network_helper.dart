import 'dart:convert';

import 'package:http/http.dart' show get;
import 'package:news_app_flutter/model/news_data_model.dart';

class NetworkHelper {
  List<NewsDataModel> news = [];

  Future fetchData(String about) async {
    final String apiKey = "df11f8afddfa4e888f5378d6e2bf9da9";
    final String urlNews =
        "http://newsapi.org/v2/everything?q=$about&from=2020-07-30&sortBy=publishedAt&apiKey=$apiKey&fbclid=IwAR0RaIxXKDa-eSmTdQrLAXHDbJEPSBNsA9TPGy0RjIWGf0ZrM01tRa-pHTc";

    final response = await get(urlNews);
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      print(decodedData);

      var articles = decodedData['articles'];
      articles.forEach((article) {
        if (article["author"] != null &&
            article["title"] != null &&
            article["description"] != null) {
          NewsDataModel newsModel = NewsDataModel.fromJson(article);
          news.add(newsModel);
        }
      });
    } else {
      print("Exception Occurred with status code: ${response.statusCode}");
    }
  }
}
