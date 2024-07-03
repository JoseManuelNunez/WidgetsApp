import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.red,
  Colors.blue,
  Colors.pink,
  Colors.orange,
  Colors.black,
];

class AppTheme {
  final int selectedColor;

  AppTheme({ this.selectedColor = 0}): assert(
    selectedColor >= 0
  );


  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor]
  );

  
}