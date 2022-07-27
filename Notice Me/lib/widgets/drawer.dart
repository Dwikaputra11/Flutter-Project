import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_akhir/configs/detect_system.dart';
import 'package:project_akhir/screens/add_activity_screen.dart';
import 'package:project_akhir/screens/mobile_home_screen.dart';
import 'package:project_akhir/screens/web_main_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  // void _detectSystem(BuildContext context) {
  //   var maxWidth = MediaQuery.of(context).size.width;
  //   if (defaultTargetPlatform == TargetPlatform.iOS ||
  //       defaultTargetPlatform == TargetPlatform.android) {
  //     Get.to(() => const HomeScreenMobile());
  //   } else if (kIsWeb) {
  //     if (maxWidth <= 1400) {
  //       Get.to(() => const MainScreenWeb(gridCount: 2));
  //     } else {
  //       Get.to(() => const MainScreenWeb(gridCount: 4));
  //     }
  //   } else {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(
  //         content: Text('Your system is not detected'),
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Column(
        children: [
          AppBar(
            elevation: 0,
            title: const Text('User name'),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text('Your Activity'),
            onTap: () => System.detectSystem(context),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text('Add Activity'),
            onTap: () {
              Get.to(() => const AddActivityScreen());
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
