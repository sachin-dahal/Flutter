import 'package:flutter/material.dart';
import 'package:news_app_flutter/services/data_provider.dart';
import 'package:news_app_flutter/utilities/constants.dart';
import 'package:provider/provider.dart';

class NewsView extends StatelessWidget {
  final int index;

  NewsView({
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: 10.0, top: 15.0, right: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // headline of the news
              Text(
                Provider.of<DataProvider>(context)
                    .newsDataModel[index]
                    .newsTitle,
                style: kTitleTextStyle,
              ),
              SizedBox(
                height: 15.0,
              ),
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    var dataIndex =
                        Provider.of<DataProvider>(context).newsDataModel[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //
                        // for the image section in newsView
                        Center(
                          child: Container(
                            height: 250.0,
                            width: 350.0,
                            child: Image.network(dataIndex.newsImageUrl ??
                                "https://loading.io/mod/spinner/spinner/sample.gif"),
                          ),
                        ),

                        SizedBox(height: 10.0),

                        // name of an author of the news
                        Text(
                          "Author: Mr. ${dataIndex.newsAuthor}",
                          style: kAuthorTextStyle,
                        ),

                        SizedBox(height: 5.0),

                        // date when the news was published
                        Text(
                          "Published At: ${dataIndex.publishedDate}",
                          style: kPublishedDateTextStyle,
                        ),

                        SizedBox(height: 10.0),

                        // description of the news
                        Text(
                          "${dataIndex.newsDescription}",
                          style: kDescriptionTextStyle,
                        ),

                        Divider(),

                        // content present upon the news
                        Text(
                          "${dataIndex.newsContent}",
                          style: kContentTextStyle,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
