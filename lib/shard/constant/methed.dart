import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:task2/shard/constant/numder.dart';

double ResponsvTextSize(double scale, double max, double min) {
  if (scale > max) {
    return max;
  } else if (scale < min) {
    return min;
  }
  return scale;
}

double ResponsvTextSizemix(
  double scale,
  double max,
) {
  if (scale > max) {
    return max;
  }
  return scale;
}

double calculaResponsvHeight(double number, double height) {
  return height * number / heightScreenfigma;
}

double calculaResponsvWdith(double number, double wdith) {
  return wdith * number / wdithScreenfigma;
}

// ignore: non_constant_identifier_names
Widget averageDistance() {
  return SizedBox(
    height: Get.height * 0.2,
  );
}
