import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' as vector;

class TypoColors {
  static const mainRed = Color.fromRGBO(255, 0, 0, 1);
  static const mainBlue = Color.fromRGBO(95, 100, 237, 1);
  static const mainGreen = Color.fromRGBO(108, 219, 108, 1);
  static const mainYellow = Color.fromRGBO(244, 244, 127, 1);
  static const mainCian = Color.fromRGBO(125, 239, 239, 1);

  static const black1 = Color.fromRGBO(0, 0, 0, 1);
  static const black2 = Color.fromRGBO(0, 0, 0, .75);
  static const black3 = Color.fromRGBO(0, 0, 0, .5);
  static const black4 = Color.fromRGBO(0, 0, 0, .35);
  static const black5 = Color.fromRGBO(0, 0, 0, .25);
  static const black6 = Color.fromRGBO(0, 0, 0, .03);
  static const black7 = Color.fromRGBO(0, 0, 0, .04);

  static const white1 = Color.fromRGBO(255, 255, 255, 1);
  static const white2 = Color.fromRGBO(255, 255, 255, .75);
  static const white3 = Color.fromRGBO(255, 255, 255, .5);
  static const white4 = Color.fromRGBO(255, 255, 255, .25);
  static const white5 = Color.fromRGBO(255, 255, 255, .17);
  static const white6 = Color.fromRGBO(255, 255, 255, .05);

  static LinearGradient gradientMain = LinearGradient(
    transform: GradientRotation(vector.radians(90)),
    colors: const [
      Color.fromRGBO(255, 0, 0, 1),
      Color.fromRGBO(255, 0, 127, 1),
    ],
  );
}
