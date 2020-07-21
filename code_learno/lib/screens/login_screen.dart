import 'package:code_learno/constants.dart';
import 'package:code_learno/screens/choosing_program_screen.dart';
import 'package:code_learno/screens/registration_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
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
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/logo.png'),
                      height: 100.0,
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      'Login',
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
              //
              Container(
                height: 380.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 35.0,
                    vertical: 35.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: kLabelHintStyle,
                          hintText: "codelearno@gmail.com",
                          hintStyle: kLabelHintStyle,
                        ),
                      ),
                      SizedBox(height: 25.0),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: kLabelHintStyle,
                          hintText: "Password",
                          hintStyle: kLabelHintStyle,
                        ),
                      ),
                      SizedBox(height: 40.0),
                      ButtonTheme(
                        minWidth: 240.0,
                        child: RaisedButton(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ChooseProgram();
                                },
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                              "Login",
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
                      SizedBox(height: 20.0),
                      Row(
                        children: <Widget>[
                          Text(
                            "Not have an account ",
                            style: TextStyle(
                              color: kTextColor1,
                              fontFamily: 'Rowdies',
                              fontSize: 16.0,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return RegistrationScreen();
                              }));
                            },
                            child: Text(
                              "Sign Up Here",
                              style: TextStyle(
                                color: kTextColor2,
                                fontFamily: 'Rowdies',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.0,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
