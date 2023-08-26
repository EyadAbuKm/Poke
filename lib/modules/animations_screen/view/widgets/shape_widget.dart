import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/animation_controller.dart';

class ShapeWidget extends StatelessWidget {
  ShapeWidget({
    super.key,
    required this.index,
    required this.radius,
    required this.color,
  });

  final int index;
  final double radius;
  final Color color;
  final animationsController = Get.find<AnimationsScreenController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        animationsController.indexChanged(index);
      },
      child: AnimatedContainer(
        duration: Duration(seconds: 2),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(radius)),
      ),
    );
  }
}
