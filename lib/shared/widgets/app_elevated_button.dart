import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ososs_test/shared/constants/colors.dart';

class AppElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color? color;
  final double? height;
  final double? width;

  const AppElevatedButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.color = ColorConstants.primaryColor,
      this.width,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Material(color: Colors.transparent,child: Text(text,style: TextStyle(color: Colors.white,fontSize: 14.sp),)),
      style: ElevatedButton.styleFrom(

          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(13.0.r), // Adjust the radius here
          ),
          backgroundColor: color,
          minimumSize: Size(width ?? 320.w, 50.h)),
    );
  }
}
