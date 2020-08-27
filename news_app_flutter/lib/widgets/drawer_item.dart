import 'package:flutter/material.dart';
import 'package:news_app_flutter/services/data_provider.dart';
import 'package:provider/provider.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final String topic;

  DrawerItem({
    this.title,
    this.topic,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      hoverColor: Colors.blue,
      title: Text(title),
      onTap: () {
        Provider.of<DataProvider>(context, listen: false).fetchNews(topic);
        Navigator.pop(context);
      },
      subtitle: Divider(),
    );
  }
}
