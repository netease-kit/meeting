
import 'package:flutter/rendering.dart';


class Gradients {
  static const Gradient primaryGradient = LinearGradient(
    begin: Alignment(0.5, 0.02764),
    end: Alignment(0.5, 0.99613),
    stops: [
      0,
      1,
    ],
    colors: [
      Color.fromARGB(255, 255, 111, 111),
      Color.fromARGB(255, 222, 58, 58),
    ],
  );
}