import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ososs_test/shared/constants/colors.dart';

class AnimationsScreenController extends GetxController {
  /// The index of the current shape
  int currentIndex = 0;

  /// the big shape properties
  double height = 300;
  double width = 300;
  Color color = ColorConstants.primaryColor;
  double radius = 0;

  /// the defaults
  double defaultHeight = 300;
  double defaultWidth = 300;

  void indexChanged(int value) {
    currentIndex = value;
    switch (currentIndex) {
      case 0:
        height = defaultHeight;
        width = defaultHeight;
        radius = 0;
        color = ColorConstants.primaryColor;
        break;

      case 1:
        height = defaultHeight;
        width = defaultWidth;
        radius = 40.r;
        color = ColorConstants.cyan;
        break;

      case 2:
        height = defaultHeight;
        width = defaultWidth;
        radius = 200.r;
        color = ColorConstants.secondaryColor;
        break;
    }
    update();
  }
}
