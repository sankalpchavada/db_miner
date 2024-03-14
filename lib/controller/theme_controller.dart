import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  final _isDarkMode = false.obs;

  bool get isDarkMode => _isDarkMode.value;

  void changeTheme() {
    _isDarkMode.value = !_isDarkMode.value;
  }
}
class ThemeService {
  final _themeController = Get.put(ThemeController());

  ThemeData get theme => _themeController.isDarkMode
      ? ThemeData.dark()
      : ThemeData.light();
}