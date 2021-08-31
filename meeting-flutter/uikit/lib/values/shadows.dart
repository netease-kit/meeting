
import 'package:flutter/rendering.dart';


class Shadows {
  static const BoxShadow primaryShadow = BoxShadow(
    color: Color.fromARGB(77, 242, 42, 42),
    offset: Offset(0, 4),
    blurRadius: 10,
  );
  static const BoxShadow secondaryShadow = BoxShadow(
    color: Color.fromARGB(25, 36, 39, 68),
    offset: Offset(0, 2),
    blurRadius: 8,
  );
}