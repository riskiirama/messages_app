import 'package:flutter/material.dart';

double defaultMargin = 30.0;

Color primaryColor = Color(0xff000000);
Color backgroundLinear = Color(0xffD8E3FF);
Color backgroundWhite = Color(0xffFFFFFF);
Color blueColor = Color(0xff4272ED);
Color darkBlueColor = Color(0xff00237B);
Color greyColor = Color(0xffEFEFEF);
Color darkGreyColor = Color(0xFF7A7878);
Color grey = Color(0xff505050);

TextStyle textBold = TextStyle(
  fontFamily: 'SF_Pro_700',
);

TextStyle textSemiBold = TextStyle(
  fontFamily: 'SF_Pro_500',
);

double defaultWidth(BuildContext context) =>
    deviceWidth(context) - 2 * defaultMargin;
double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
