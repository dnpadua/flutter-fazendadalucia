import 'package:flutter/material.dart';

class PaletaCores {
  static Map<int, Color> _amostraCores = {
    50: Color.fromRGBO(105, 105, 105, 0.05),
    100: Color.fromRGBO(105, 105, 105, 0.1),
    200: Color.fromRGBO(105, 105, 105, 0.2),
    300: Color.fromRGBO(105, 105, 105, 0.3),
    400: Color.fromRGBO(105, 105, 105, 0.4),
    500: Color.fromRGBO(105, 105, 105, 0.5),
    600: Color.fromRGBO(105, 105, 105, 0.6),
    700: Color.fromRGBO(105, 105, 105, 0.7),
    800: Color.fromRGBO(105, 105, 105, 0.8),
    900: Color.fromRGBO(105, 105, 105, 0.9),
  };

  MaterialColor colorPadrao = MaterialColor(0xFF659C35, _amostraCores);
}
