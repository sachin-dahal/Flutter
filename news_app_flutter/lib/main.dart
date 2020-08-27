import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/news_list.dart';
import 'services/data_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DataProvider>(
      create: (context) => DataProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.blueGrey),
        title: "News App 2020",
        home: NewsList(),
      ),
    );
  }
}
