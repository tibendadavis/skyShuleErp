import 'package:flutter/material.dart';

class Insets {
  double appPadding = 20;
  double lgPadding = 50;
  double appRadiusMin = 6;
  double appRadiusMid = 18;
  double appRadius = 24;
  double smallAvatarRadius = 17;
  double appFontSize = 14;
  double appFontSizeLG = 25;
  double appGap = 10;
  double appBarHeight = 60;
  double bottomBarHeight = 80;
  double inputSize = 45;
  double smallInputSize = 35;
}

var test = Insets().inputSize;

class Palette {
  var appColorDark = const Color(0xFF263238);
  var appColorLight = Colors.white;
  var appDark = const Color.fromRGBO(72, 102, 237, 1);

  var primaryColor = const Color.fromRGBO(59, 102, 207, 1);
  //var primaryColor = const Color.fromRGBO(72, 102, 237, 1);
  var primaryColorLight = const Color.fromRGBO(233, 235, 241, 1.0);
  var primaryColorExtraLight = const Color.fromRGBO(233, 235, 241, 1.0);
  var textColor = const Color.fromRGBO(227, 232, 250, 1);
  var appInfo = const Color.fromRGBO(10, 57, 119, 1.0);
  var appSucc = const Color.fromRGBO(21, 94, 24, 1.0);
  var appError = const Color.fromRGBO(178, 36, 34, 1.0);
  var appWarn = const Color.fromRGBO(127, 76, 9, 1.0);
  var appInfo2 = const Color.fromRGBO(223, 231, 239, 1.0);
  var appSucc2 = const Color.fromRGBO(196, 242, 199, 1.0);
  var appError2 = const Color.fromRGBO(249, 225, 220, 1.0);
  var appWarn2 = const Color.fromRGBO(239, 224, 207, 1.0);
  var borderColor = Colors.grey;
}
