import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tugas_flutter/Widgets/drawer.dart';
import 'package:tugas_flutter/screens/chat.dart';
import 'package:tugas_flutter/screens/collection.dart';
import 'package:tugas_flutter/screens/dashboard.dart';
import 'package:tugas_flutter/screens/profile.dart';
import 'package:tugas_flutter/Widgets/drawer.dart';

import 'search.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final Map<String, Widget> screens = {
    'Home': const Dashboard(),
    'Collection': Collection(),
    'Search': const Search(),
    'Chat': Chat(),
    'Profile': const Profile(),
  };

  final iconBotNavbar = [
    {'active': Icons.home, 'notActive': Icons.home_outlined},
    {'active': Icons.bookmark, 'notActive': Icons.bookmark_border_outlined},
    {'active': Icons.search_rounded, 'notActive': Icons.search_outlined},
    {'active': Icons.chat_rounded, 'notActive': Icons.chat_outlined},
    {'active': Icons.person, 'notActive': Icons.person_outline},
  ];
  BottomNavigationBarItem? botNavbarItem;

  final PageStorageBucket bucket = PageStorageBucket();
  Widget? currentScreen = const Dashboard();

  List<BottomNavigationBarItem> _generateBottomNavBartItem() {
    List<BottomNavigationBarItem> bottomNavbarItems = [];
    int i = 0;
    bottomNavbarItems = iconBotNavbar.map((e) {
      return BottomNavigationBarItem(
        icon: Icon(e['notActive']),
        activeIcon: Icon(e['active']),
        label: screens.keys.elementAt(i++),
      );
    }).toList();
    return bottomNavbarItems;
  }

  void _changeScreen(int index) {
    // print(screens[screens.keys.elementAt(index)] == screens['Search']);
    setState(() {
      currentScreen = screens[screens.keys.elementAt(index)];
      currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: screens[screens.keys.elementAt(currentTab)] == screens['Search']
          ? null
          : AppBar(
              title: const Text('OnlyJobs'),
              backgroundColor: const Color(0xFFA994FF),
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))
              ],
            ),
      drawer: DrawerScreen(),
      backgroundColor: const Color(0xFFF8F8F8),
      body: SafeArea(
        child: PageStorage(
          child: currentScreen!,
          bucket: bucket,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTab,
        items: _generateBottomNavBartItem(),
        onTap: (i) => _changeScreen(i),
        unselectedItemColor: const Color(0xFFCCCCCC),
        selectedItemColor: const Color(0xFFA994FF),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(
          color: Color(0xFFA994FF),
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }
}
