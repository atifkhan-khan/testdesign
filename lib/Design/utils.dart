import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
//* COLORS

const Color kcHeadingColor = Color(0xFF202124);
const Color kcParagraphColor = Color(0xFF5F6368);
const Color kcWhiteColor = Color(0xFFFFFFFF);
const Color kcGreyColor = Color(0xFFCACACA);

//* COMMON SPACING

const Widget horizontalSpaceTiny = SizedBox(
  width: 5,
);
const Widget horizontalSpaceSmall = SizedBox(
  width: 10.0,
);
const Widget horizontalSpaceRegular = SizedBox(
  width: 18.0,
);
const Widget horizontalSpaceMedium = SizedBox(
  width: 25.0,
);

const Widget horizontalSpaceLarge = SizedBox(
  width: 50.0,
);

const Widget verticalSpaceTiny = SizedBox(
  height: 5,
);
const Widget verticalSpaceSmall = SizedBox(
  height: 10.0,
);
const Widget verticalSpaceRegular = SizedBox(
  height: 18.0,
);
const Widget verticalSpaceMedium = SizedBox(
  height: 25.0,
);

const Widget verticalSpaceLarge = SizedBox(
  width: 50.0,
);




ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.green[700],
    )
);

ThemeData darkTheme = ThemeData.dark();
//* screen size helpers

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenHeightPercentage(BuildContext context, {double percentage = 1}) =>
    screenHeight(context) * percentage;

double screenWidthPercentage(BuildContext context, {double percentage = 1}) =>
    screenWidth(context) * percentage;

//* ScreenPadding const

EdgeInsets screenPadding = EdgeInsets.only(left: 16, right: 16);

//* Text style
 const TextStyle largeTextStyle = TextStyle(
  fontSize: 20,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);
const TextStyle largetinyTextStyle = TextStyle(
  fontSize: 20,
  color: Colors.black,
  fontWeight: FontWeight.normal,
);
const TextStyle mediumTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.normal,
);
const TextStyle mediumTextStyleb = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
);
const TextStyle smallTextStyle = TextStyle(
  fontSize: 9,
  fontWeight: FontWeight.bold,
);
const TextStyle smallnotBoldTextStyle = TextStyle(
  fontSize: 9,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);
const TextStyle smalloldPriceTextStyle = TextStyle(
  fontSize: 9,
  color: Colors.green,
  decoration: TextDecoration.lineThrough,
  fontWeight: FontWeight.bold,
);