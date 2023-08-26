import 'package:get/get.dart';

import 'animation_controller.dart';

class AnimationsScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimationsScreenController>(
        () => AnimationsScreenController());
  }
}
