import 'package:flutter/material.dart';

// creating a special class for styles used on the app
class Styles {
  static final appbarColor = Color.fromRGBO(0, 0, 51, 1);

  // styling for title texts
  static final titleTextStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Color.fromRGBO(0, 0, 51, 1),
  );

  // styling for normal texts
  static final textTextStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  // styling for text used in the splash screen
  static final splashStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 40,
    fontWeight: FontWeight.w700,
    color: Color.fromRGBO(0, 0, 51, 1),
  );

}