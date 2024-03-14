
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sankalp/view/home_screen.dart';

import '../main.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Get.off(() => HomeScreen());
    });
    return Scaffold(
      body: Center(
        child: Text(
          'Quote App',
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
