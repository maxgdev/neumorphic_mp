import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic_mp/neu_colors.dart';
import './intro.dart';

class NuePage extends StatefulWidget {
  @override
  _NuePageState createState() => _NuePageState();
}

class _NuePageState extends State<NuePage> {
  bool themeMode = true;

  void toggleMode() {
    setState(() {
      themeMode = !themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: themeMode
                  ? [bgColorLightTop, bgColorLightBottom]
                  : [bgColorDarkTop, bgColorDarkBottom],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              height: 30,
                              width: 30,
                              child: themeMode
                                  ? Icon(FontAwesomeIcons.moon)
                                  : Icon(FontAwesomeIcons.sun)),
                          onTap: toggleMode,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Intro(themeMode: themeMode)
                  ],
                ),
              ),
              Container(
                height: 0.2 * _height,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: buttonGradient,
                  border: Border.all(
                    width: 5,
                    color: Color(0xff555555),
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
