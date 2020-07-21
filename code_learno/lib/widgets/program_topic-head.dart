import 'package:code_learno/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProgramTopic extends StatelessWidget {
  final Function onTap;
  final String image;
  final String imageLabel;
  final String title;
  final String subtitle;
  const ProgramTopic(
      {this.onTap, this.image, this.imageLabel, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: (MediaQuery.of(context).size.height) / 3,
        decoration: BoxDecoration(
          color: Colors.lightGreen[200],
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: kTextColor2,
              offset: Offset(
                5.0,
                5.0,
              ),
              blurRadius: 2.5,
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10.0, bottom: 20.0, left: 10.0),
              child: SvgPicture.asset(
                image,
                semanticsLabel: imageLabel,
                height: 140.0,
              ),
            ),
            Container(
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Rowdies',
                        ),
                      ),
                      Divider(
                        color: kTextColor2,
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: kTextColor1,
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
