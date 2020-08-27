import 'package:flutter/material.dart';
import '../model/news_data_model.dart';

import 'network_helper.dart';

class DataProvider extends ChangeNotifier {
  List<NewsDataModel> newsDataModel = List<NewsDataModel>();

  fetchNews(String topic) async {
    NetworkHelper networkHelper = NetworkHelper();
    await networkHelper.fetchData(topic);
    newsDataModel = networkHelper.news;
    notifyListeners();
  }
}
