import 'package:carousel_slider/carousel_slider.dart';
import 'package:code_learno/constants.dart';
import 'package:code_learno/screens/login_screen.dart';
import 'package:code_learno/widgets/carousel.dart';
import 'package:code_learno/widgets/carousel_next_button.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  CarouselController carouselSlider = CarouselController();
  int imgIndex = 0;

  Widget nextBtn() {
    if (imgIndex == carouselImages.length - 1) {
      return CarouselNextButton(
        text: 'LET\'S GET STARTED',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return LoginScreen();
              },
            ),
          );
        },
      );
    } else {
      return CarouselNextButton(
        text: 'NEXT',
        onPressed: () {
          carouselSlider.nextPage(
              duration: Duration(seconds: 1),
              curve: Curves.fastLinearToSlowEaseIn);
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10.0),
          Align(
            alignment: Alignment.bottomRight,
            child: RaisedButton(
              elevation: 10.0,
              color: kTextColor2,
              splashColor: kTextColor1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              child: Text(
                'SKIP',
                style: TextStyle(
                  color: kBgColor,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Rowdies',
                  letterSpacing: 2,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            'Code Learno\n\n< />',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kTextColor2,
              fontSize: 25.0,
              fontFamily: 'Press Start',
              fontWeight: FontWeight.w900,
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(height: 40.0),
          CarouselEffect(
            carouselSlider: carouselSlider,
            onPageChanged: (index, context) {
              setState(() {
                imgIndex = index;
              });
            },
          ),
          SizedBox(height: 20.0),
          nextBtn(),
          SizedBox(height: 15.0),
        ],
      ),
    );
  }
}
