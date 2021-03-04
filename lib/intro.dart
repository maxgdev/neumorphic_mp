import 'package:flutter/material.dart';
import 'package:neumorphic_mp/neu_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Intro extends StatelessWidget {
  final bool themeMode;

  const Intro({Key key, this.themeMode}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.1 * MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Text("Design by: Elene Zelova",
            style: TextStyle(
              fontSize: 12,
              color: themeMode ? textColorDark : textColorLight
            ),
          ),
          Spacer(),
          Text("Crack a Bottle",
            style: TextStyle(
              fontSize: 25,
              color: themeMode ? textColorDark : textColorLight
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Eminem, Dr. Dre & 50 Cent",
            style: TextStyle(
              fontSize: 15,
              color: themeMode ? textColorDark : textColorLight
            ),
          ),
        ],
      ),
    );
  }
}
