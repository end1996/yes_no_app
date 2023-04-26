import 'package:flutter/material.dart';

final List<Color> _colorThemes = [
  _customColor,
  Colors.black,
  Colors.blue,
  Colors.red,
  Colors.amber,
  Colors.green,
  Colors.pink,
];

//Se agrega 0xFF para que tome el hexadecimal
const Color _customColor = Color(0xFF49149F);

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors must be between 0 and ${_colorThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
