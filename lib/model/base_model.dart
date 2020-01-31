import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common/custom_number_generator.dart';

class BaseModel extends ChangeNotifier {
  int _counter = 0;
  Color _color = Colors.white;

  int get counter => _counter;

  set counter(int value) {
    _counter = value;
    notifyListeners();
  }

  Color get color => _color;

  set color(Color value) {
    _color = value;
    notifyListeners();
  }

  generateColor() {
    color = _colorGenerator();
    counter++;
  }

  nullify() {
    color = Colors.white;
    counter = 0;
  }

  Color _colorGenerator() {
    CustomNumberGenerator random = new CustomNumberGenerator(255);

    int a = random.nextInt();
    int r = random.nextInt();
    int g = random.nextInt();
    int b = random.nextInt();
    Color color = new Color.fromARGB(a, r, g, b);

    return color;
  }
}
