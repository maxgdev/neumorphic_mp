import 'package:flutter/material.dart';

// Defined (named) colours/colors
Color bgColorLightTop = Color(0xffd7dfe4);
Color bgColorLightBottom = Color(0xff7a7886);
Color bgColorDarkTop = Color(0xff62696e);
Color bgColorDarkBottom = Color(0xff2a1d29);

Color textColorDark = Color(0xff2a1d29);
Color textColorLight = Color(0xffd7dfe4);

Color themeColorLight = Color(0xff00b0aa);
Color themeCOlorDark = Color(0xff005855);

Gradient buttonGradient = LinearGradient(
  colors:[
    Colors.black.withOpacity(0.7),
    Color(0xff091f05)
    ] ,
    begin: Alignment.topLeft,
    end: Alignment.bottomRight
  );