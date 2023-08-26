import 'package:ososs_test/modules/modules.dart';
import 'package:get/get.dart';


import '../../modules/animations_screen/animations.dart';
import '../../modules/home/home.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),

    GetPage(
        name: Routes.HOME,
        page: () => HomeScreen(),
        binding: HomeBinding(),
      ),

    GetPage(
      name: Routes.ANIMATIONS,
      page: () => AnimationsScreen(),
      binding: AnimationsScreenBinding(),
    ),


  ];
}
