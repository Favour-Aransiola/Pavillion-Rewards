import 'package:flutter/material.dart';

class ColorManager {
  static Color purple = HexColour('#5243D2').fromHex();
  static Color black = HexColour('#0D073C').fromHex();
  static Color red = HexColour('#0D073C').fromHex();
  static Color brown = HexColour('#A61818').fromHex();
  static Color orange = HexColour('#FF5F00').fromHex();
  static Color violet = HexColour('#66268b').fromHex();

  static Color lightgreen = HexColour('#8dd7a8').fromHex();
  static Color darkgreen = HexColour('#2b9f56').fromHex();
  static Color lightred = HexColour('#e592a5').fromHex();
  static Color darkred = HexColour('#e4325a').fromHex();

  static const white = Colors.white;
  static final fadedWhite = white.withOpacity(0.6);
  static final shadowColor = Colors.black.withOpacity(0.1);
  static final iconColor = Colors.black.withOpacity(0.3);
}

class HexColour {
  String colour;
  HexColour(this.colour);

  Color fromHex() {
    colour = colour.replaceAll('#', '');
    if (colour.length == 6) {
      colour = 'ff$colour';
    }
    return Color(int.parse(colour, radix: 16));
  }
}
