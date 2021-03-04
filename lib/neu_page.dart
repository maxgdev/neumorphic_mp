import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic_mp/neu_colors.dart';
import 'package:neumorphic_mp/volume_button.dart';
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
    final _width = MediaQuery.of(context).size.width;

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
                    ),
                    boxShadow: themeMode
                        ? [
                            BoxShadow(
                              color: Color(0xff090010).withOpacity(0.7),
                              offset: Offset(10, 10),
                              blurRadius: 20.0,
                              spreadRadius: 4.0,
                            ),
                            BoxShadow(
                              color: Colors.white.withOpacity(0.5),
                              offset: Offset(-10, -10),
                              blurRadius: 20.0,
                              spreadRadius: 4.0,
                            )
                          ]
                        : [
                            BoxShadow(
                              color: Color(0xff090010).withOpacity(0.7),
                              offset: Offset(10, 10),
                              blurRadius: 20.0,
                              spreadRadius: 4.0,
                            ),
                            BoxShadow(
                              color: themeColorLight.withOpacity(0.5),
                              offset: Offset(-10, -10),
                              blurRadius: 20.0,
                              spreadRadius: 4.0,
                            )
                          ]),
                child: Container(
                  // height: 0.5 * MediaQuery.of(context).size.height,
                  height: 300,
                  width: 300,
                  child: Icon(
                    FontAwesomeIcons.waveSquare,
                    size: 40,
                    // color:  themeMode ? textColorDark : textColorLight,
                    color: themeColorLight,
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("3:07",
                            style: TextStyle(
                              color: themeMode ? textColorDark : textColorLight,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                        Container(
                          height: 7,
                          width: _width * 0.45,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                  colors: [
                                    Color(0xff474747),
                                    Color(0xff141414),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                )),
                              ),
                              FractionallySizedBox(
                                heightFactor: 1,
                                widthFactor: 0.7,
                                child: Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            themeColorDark,
                                            themeColorLight
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter),
                                      borderRadius: BorderRadius.circular(100)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text("2:11",
                            style: TextStyle(
                                color:
                                    themeMode ? textColorDark : textColorLight,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        VolumeButton(
                          btnRadius: 14, 
                          childRadiius: 10, 
                          icon: FontAwesomeIcons.minus, 
                          themeMode: themeMode,
                        ),
                        // IconButton(
                          // icon: Icon(FontAwesomeIcons.minus, color: themeColorLight), 
                          // onPressed: () {}),
                        Container(
                          height: _height * 0.15,
                          width: _width * 0.15,
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [Colors.black, bgColorDarkTop],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight
                            ),
                          ),
                          child: Center(child: Text(
                            "7", 
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              color: themeColorLight,
                              ),)),
                        ),
                        
                        VolumeButton(
                          btnRadius: 10, 
                          childRadiius: 10, 
                          icon: FontAwesomeIcons.plus, 
                          themeMode: themeMode,
                        ),
                 
                        
                      ],
                    ),
                    

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

}
