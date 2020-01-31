import 'package:flutter/material.dart';
import 'package:flutter_app/common/custom_number_generator.dart';
import 'package:flutter_app/model/base_model.dart';

class FirstPageModel extends BaseModel {
  final CustomNumberGenerator _random = new CustomNumberGenerator(255);

  @override
  Color generateRandomColor() {
    int r = _random.nextInt();
    int g = _random.nextInt();
    int b = _random.nextInt();
    Color color = new Color.fromARGB(255, r, g, b);

    return color;
  }
}
