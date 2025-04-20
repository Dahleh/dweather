import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../constants.dart';

class AppNavigation {
  static void navigateToRemovingAll(context, Widget widget) async {
    errorData = {};
    Navigator.pushAndRemoveUntil(
        context,
        PageTransition(
            child: widget,
            type: PageTransitionType.fade,
            duration: const Duration(milliseconds: 700)),
        (Route<dynamic> route) => false);
  }

  static void navigateTo(BuildContext context, Widget widget) async {
    errorData = {};
    Navigator.of(context).push(
      PageTransition(
        child: widget,
        type: PageTransitionType.fade,
        opaque: true,
        duration: const Duration(milliseconds: 700),
      ),
    );
  }

  static void navigateReplacement(BuildContext context, Widget widget) async {
    errorData = {};
    Navigator.pushReplacement(
      context,
      PageTransition(
        child: widget,
        type: PageTransitionType.fade,
        duration: const Duration(milliseconds: 700),
      ),
    );
  }

  static Future<dynamic> navigateToUpdate(
      BuildContext context, Widget widget) async {
    errorData = {};
    dynamic value = await Navigator.of(context).push(
      PageTransition(
        child: widget,
        type: PageTransitionType.fade,
        duration: const Duration(milliseconds: 700),
      ),
    );

    return value;
  }

  static void navigatorPop(BuildContext context) {
    errorData = {};
    Navigator.pop(context);
  }

  static void navigateCloseDialog(BuildContext context) async {
    errorData = {};
    Navigator.of(context, rootNavigator: true).pop();
  }

  static void navigatorPopTrue(BuildContext context) {
    errorData = {};
    Navigator.of(context).pop(true);
  }

  static void navigatorPopData(BuildContext context, dynamic data) {
    errorData = {};
    Navigator.of(context).pop(data);
  }

  static void navigatorPopFalse(BuildContext context) {
    errorData = {};
    Navigator.of(context).pop(false);
  }
}
