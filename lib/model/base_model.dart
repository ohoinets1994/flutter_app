import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sprintf/sprintf.dart';

abstract class BaseModel extends ChangeNotifier {
  Color _color = Colors.white;
  Color _textColor = Colors.black;
  String _colorHex = "#ffffff";

  Color get color => _color;

  set color(Color value) {
    _color = value;
    notifyListeners();
  }

  Color get textColor => _textColor;

  set textColor(Color value) {
    _textColor = value;
    notifyListeners();
  }

  String get colorHex => _colorHex;

  set colorHex(String value) {
    _colorHex = value;
    notifyListeners();
  }

  generateColor() {
    color = generateRandomColor();
    _getColorHex(color);
  }

  nullify() {
    color = Colors.white;
    textColor = Colors.black;
    colorHex = "#ffffff";
  }

  Color generateRandomColor();

  _getColorHex(Color color) {
    colorHex = sprintf("#%02X%02X%02X", [color.red, color.green, color.blue]);
    textColor = color.computeLuminance() > 0.2 ? Colors.black : Colors.white;
  }
}
