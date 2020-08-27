import 'package:flutter/material.dart';
import 'package:news_app_flutter/utilities/constants.dart';

class NewsListCard extends StatelessWidget {
  NewsListCard({
    @required this.imgUrl,
    @required this.title,
    @required this.description,
  });

  final String imgUrl;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          children: [
            Container(
              height: 110.0,
              width: 350.0,
              child: Image.network(imgUrl ??
                  "https://loading.io/mod/spinner/spinner/sample.gif"),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                    title,
                    style: kMainTiteTextStyle,
                  ),
                  SizedBox(height: 10.0),
                  Text(description.substring(0, 50) + " ....."),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
