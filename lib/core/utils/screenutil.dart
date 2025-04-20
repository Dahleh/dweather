import 'package:flutter/material.dart';

class CustomScreenUtil {
  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static bool isTablet() {
    final data = MediaQueryData.fromView(WidgetsBinding.instance.window);
    return data.size.shortestSide < 600 ? false : true;
  }
}
