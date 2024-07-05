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
  final bool isLightMode;

  AppTheme({ this.selectedColor = 0, this.isLightMode = true}): assert(
    selectedColor >= 0,
    
  );


  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: isLightMode ? Brightness.light : Brightness.dark,
    colorSchemeSeed: colorList[selectedColor]
  );

  
}