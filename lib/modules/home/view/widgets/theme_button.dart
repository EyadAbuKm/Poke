

import 'package:flutter/material.dart';
import 'package:get/get.dart';

IconButton buildChangeThemeButton() {
  return IconButton(
    icon: Icon(Icons.palette),
    onPressed: () {
      toggleTheme();
    },
  );
}


void toggleTheme() {
  Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
}