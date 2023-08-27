
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/routes/app_pages.dart';
import '../../../../shared/widgets/app_elevated_button.dart';
import '../../controller/home_controller.dart';

Widget buildTopTextsSection(BuildContext context) {
  final homeController = Get.find<HomeController>();

  return Column(
    children: [
      TextFormField(
        controller: homeController.nameController,
        onChanged: homeController.textChanged,
        decoration: InputDecoration(hintText: "EnterYourName".tr),
      ),
      SizedBox(height: 20.h),
      GetBuilder<HomeController>(builder: (controller) {
        String text =  controller.nameController.text;
        return Text(
         text.isEmpty?"yourName".tr:text,
          style: Theme.of(context).textTheme.headlineSmall,
        );
      }),
    ],
  );
}

Widget buildBottomButtonsSection() {
  final homeController = Get.find<HomeController>();

  return Column(
    children: [
      TextButton(
          onPressed: () {
            homeController.textChanged("");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.delete,
                color: Colors.red,
              ),
              SizedBox(
                width: 4.w,
              ),
              Text(
                "Clear".tr,
                style: TextStyle(color: Colors.red),
              )
            ],
          )),
      AppElevatedButton(
        onPressed: () {
          Get.toNamed(Routes.ANIMATIONS);
        },
        text: "${'GoToPage'.tr} 1",
        color: Colors.blue[800],
      ),
      SizedBox(
        height: 12.h,
      ),
      AppElevatedButton(
        onPressed: () {
          Get.toNamed(Routes.POKEMONS);
        },
        text: "${'GoToPage'.tr} 2",
        color: Colors.blue[200],
      ),
    ],
  );
}