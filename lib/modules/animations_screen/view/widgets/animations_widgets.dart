import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ososs_test/modules/animations_screen/view/widgets/shape_widget.dart';

import '../../../../shared/constants/colors.dart';
import '../../controller/animation_controller.dart';

Row buildTheBottomButtonsRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      ShapeWidget(
        index: 0,
        color: ColorConstants.primaryColor,
        radius: 0,
      ),
      ShapeWidget(
        index: 1,
        color: ColorConstants.cyan,
        radius: 10.r,
      ),
      ShapeWidget(
        index: 2,
        color: ColorConstants.secondaryColor,
        radius: 100.r,
      )
    ],
  );
}

GetBuilder<AnimationsScreenController> buildTheMainShape() {
  return GetBuilder<AnimationsScreenController>(builder: (controller) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: controller.height,
      width: controller.width,
      decoration: BoxDecoration(
          color: controller.color,
          borderRadius: BorderRadius.circular(controller.radius)),
    );
  });
}
