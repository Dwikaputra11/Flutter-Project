import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_akhir/configs/detect_system.dart';
import 'package:project_akhir/screens/add_activity_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

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
