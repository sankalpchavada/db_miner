import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:sankalp/controller/quote_controller.dart';
import 'dart:convert';

import 'package:sankalp/view/splash_screen.dart';

import 'controller/theme_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return GetMaterialApp(
      title: 'Quote App',

      theme: ThemeService().theme,
      home: SplashScreen(),
    );
  }
}
