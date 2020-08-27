import 'package:flutter/material.dart';
import 'package:news_app_flutter/services/data_provider.dart';
import 'package:news_app_flutter/widgets/news_list_card.dart';
import 'package:provider/provider.dart';
import '../screens/news_view.dart';
import '../widgets/search_bar.dart';
import '../widgets/drawer_navigation.dart';

class NewsList extends StatefulWidget {
  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  bool onSearch = false;
  TextEditingController textFieldController;
  //TODO: to check connectivity and show results as per the connection status
  // when true : navigate user to NewsList() and show news data
  // when false: navigatte user to NewsList() but show the AlertData() to turn on the internet connection

  @override
  void initState() {
    super.initState();
    Provider.of<DataProvider>(context, listen: false).fetchNews("trending");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: onSearch ? SearchBar() : Text('Latest News 2020'),
            actions: <Widget>[
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        setState(() {
                          onSearch = !onSearch;
                        });
                      })
                ],
              )
            ],
          ),
          drawer: DrawerNavigation(),
          body: Container(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 10.0,
                    ),

                    // executes as soons as the fetchNews() got executed in initState

                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount:
                          Provider.of<DataProvider>(context, listen: true)
                              .newsDataModel
                              .length,
                      itemBuilder: (context, index) {
                        var dataIndex =
                            Provider.of<DataProvider>(context, listen: true)
                                .newsDataModel[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return NewsView(
                                index: index,
                              );
                            }));
                          },
                          child: NewsListCard(
                            imgUrl: dataIndex.newsImageUrl,
                            title: dataIndex.newsTitle,
                            description: dataIndex.newsDescription,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
