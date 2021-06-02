import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Constants extends GetxController {
  Color getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return Color(int.parse(hexColor, radix: 16));
  }

  String notFoundImage =
      "https://www.thermaxglobal.com/wp-content/uploads/2020/05/image-not-found.jpg";
}
