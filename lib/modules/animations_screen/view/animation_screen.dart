import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ososs_test/modules/animations_screen/view/widgets/animations_widgets.dart';
import '../../home/controller/home_controller.dart';

class AnimationsScreen extends StatefulWidget {
  const AnimationsScreen({Key? key}) : super(key: key);

  @override
  State<AnimationsScreen> createState() => _AnimationsScreenState();
}

class _AnimationsScreenState extends State<AnimationsScreen> {
  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations".tr),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 24.h,
            ),
            Text(
              homeController.nameController.text,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(
              height: 20.h,
            ),
            buildTheMainShape(),
            Spacer(),
            buildTheBottomButtonsRow(),
            SizedBox(
              height: 24.h,
            )
          ],
        ),
      ),
    );
  }

}

