import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/mobile_home_screen.dart';
import '../screens/web_main_screen.dart';

class System {
  static detectSystem(BuildContext context){
    var maxWidth = MediaQuery.of(context).size.width;
    if (defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.android) {
      Get.to(() => const HomeScreenMobile());
    } else if (kIsWeb) {
      if (maxWidth <= 1400) {
        Get.to(() => const MainScreenWeb(gridCount: 2));
      } else {
        Get.to(() => const MainScreenWeb(gridCount: 4));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Your system is not detected'),
        ),
      );
    }
  }
}