import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './neu_colors.dart';

class VolumeButton extends StatelessWidget {
  final double btnRadius;
  final double childRadiius;
  final bool themeMode;
  final IconData icon;

  VolumeButton({
      this.btnRadius, 
      this.childRadiius, 
      this.themeMode, 
      this.icon
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // height: MediaQuery.of(context).size.height,
        height: 50,
        width: 50,
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
                  ),
                ],
        ),
        child: IconButton(
            icon: Icon(
              icon,
              // FontAwesomeIcons.plus,
              color: themeColorLight,
            ),
            onPressed: () {}),
      ),
    );
  }
}
