import 'package:flutter/material.dart';

const String questionTextFontName = 'Lato';
const String answerTextFontName = 'Montserrat';

const mediumTextSize = 22.0;
const largeTextSize = 30.0;
const smallTextSize = 20.0;

const appBarTextStyle = TextStyle(
  fontFamily: questionTextFontName,
  fontWeight: FontWeight.w300,
  fontSize: mediumTextSize,
  color: Colors.white,
);

const questionTextStyle = TextStyle(
  fontFamily: questionTextFontName,
  fontWeight: FontWeight.w600,
  fontSize: largeTextSize,
  color: Colors.black,
);

const answerTextStyle = TextStyle(
  fontFamily: answerTextFontName,
  fontWeight: FontWeight.w300,
  fontSize: smallTextSize,
  color: Colors.white,
);

const cardTextStyle = TextStyle(
  fontFamily: answerTextFontName,
  fontWeight: FontWeight.bold,
  fontSize: mediumTextSize,
  color: Colors.teal,
);

final elevatedButtonStyle = ElevatedButtonThemeData(
  style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.grey.shade600),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      minimumSize: MaterialStateProperty.all(
        const Size.fromHeight(70),
      )),
);

const drawerStyle = DrawerThemeData(
  width: 250,
  elevation: 2.5,
);

const listTextStyle = TextStyle(
  fontFamily: questionTextFontName,
  fontSize: mediumTextSize,
  fontWeight: FontWeight.bold,
);

const cardStyle = CardTheme(
  elevation: 0,
  color: Colors.white60,
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12))),
);
