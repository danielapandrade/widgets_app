import 'package:flutter/material.dart';

const listColor = <Color>[Colors.blue, Colors.red, Colors.green, Colors.pink];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(selectedColor >= 0, 'color must be greater than 0'),
      assert(selectedColor <= listColor.length);

  ThemeData getTheme() =>
      ThemeData(useMaterial3: true, colorSchemeSeed: listColor[selectedColor]);
}
