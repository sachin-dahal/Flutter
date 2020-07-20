import 'package:code_learno/constants.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/logo.png'),
                      height: 100.0,
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: "Roboto",
                        color: kTextColor1,
                        letterSpacing: 1.5,
                        fontSize: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              //
              Expanded(
                child: Container(
                  height: 400.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 30.0,
                      left: 20.0,
                      right: 20.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Name",
                            labelStyle: kLabelHintStyle,
                            hintText: "Elon Musk",
                            hintStyle: kLabelHintStyle,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: kLabelHintStyle,
                            hintText: "codelearno@gmail.com",
                            hintStyle: kLabelHintStyle,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: kLabelHintStyle,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Re-type Password",
                            labelStyle: kLabelHintStyle,
                          ),
                        ),
                        SizedBox(height: 18.0),
                        ButtonTheme(
                          minWidth: 240.0,
                          child: RaisedButton(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: kTextColor1,
                                  fontFamily: 'Rowdies',
                                  letterSpacing: 2.0,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "< Back to login page",
                            style: TextStyle(
                              color: kTextColor2,
                              fontFamily: 'Rowdies',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
