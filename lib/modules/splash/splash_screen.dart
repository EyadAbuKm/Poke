import 'package:flutter/material.dart';
import 'package:ososs_test/shared/shared.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(

          size: 150.0,
        ),
      ),
    );
  }
}
