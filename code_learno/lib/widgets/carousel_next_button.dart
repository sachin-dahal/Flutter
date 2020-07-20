import 'package:code_learno/constants.dart';
import 'package:flutter/material.dart';

class CarouselNextButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  CarouselNextButton({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 250.0,
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: RaisedButton(
        elevation: 5.0,
        color: kColor2,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2.0,
            color: kColor2,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: kTextColor2,
            letterSpacing: 1.2,
            fontFamily: 'Rowdies',
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
