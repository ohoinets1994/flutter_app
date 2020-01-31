import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_app/model/base_model.dart';

class SecondPageModel extends BaseModel {
  @override
  generateColor() {
    color = _colorGenerator();
    counter++;
  }

  Color _colorGenerator() {
    Random random = new Random();

    int r = random.nextInt(255);
    int g = random.nextInt(255);
    int b = random.nextInt(255);
    Color color = new Color.fromARGB(255, r, g, b);

    return color;
  }
}
