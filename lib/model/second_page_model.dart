import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/model/base_model.dart';

class SecondPageModel extends BaseModel {
  final Random _random = new Random();

  @override
  Color generateRandomColor() {
    int r = _random.nextInt(255);
    int g = _random.nextInt(255);
    int b = _random.nextInt(255);
    Color color = new Color.fromARGB(255, r, g, b);

    return color;
  }
}
