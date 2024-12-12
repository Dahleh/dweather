import 'dart:async';

import 'package:dweather/Screens/home.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  static const routName = "splash";
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Future<void> wait() async {
    Timer(const Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, HomePage.routName));
  }

  @override
  void initState() {
    wait();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
