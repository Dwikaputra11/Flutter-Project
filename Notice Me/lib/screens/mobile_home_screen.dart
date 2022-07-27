import 'package:flutter/material.dart';
import 'package:project_akhir/screens/favorite_screen.dart';
import 'package:project_akhir/widgets/drawer.dart';

import '../../constants/colors.dart';
import 'dashboard_screen.dart';

class HomeScreenMobile extends StatefulWidget {
  const HomeScreenMobile({Key? key}) : super(key: key);

  @override
  State<HomeScreenMobile> createState() => _HomeScreenMobileState();
}

class _HomeScreenMobileState extends State<HomeScreenMobile> {
  int _currentTab = 0;

  final Map<String, Widget> _screens = {
    'Dashboard': const DashboardScreen(),
    'Finish': const FavoriteScreen(),
  };

  final _iconBottomNavbar = [
    {'active': Icons.home, 'notActive': Icons.home_outlined},
    {'active': Icons.done_rounded, 'notActive': Icons.done_outline_rounded},
  ];

  final PageStorageBucket _bucket = PageStorageBucket();

  Widget? _currentScreen = const DashboardScreen();

  List<BottomNavigationBarItem> _generateBottomNavbarItem() {
    List<BottomNavigationBarItem> bottomNavbarItems = [];
    int i = 0;
    bottomNavbarItems = _iconBottomNavbar
        .map(
          (e) => BottomNavigationBarItem(
            icon: Icon(e['notActive']),
            activeIcon: Icon(e['active']),
            label: _screens.keys.elementAt(i++),
          ),
        )
        .toList();
    return bottomNavbarItems;
  }

  void _changeScreen(int i){
    setState(() {
      _currentScreen = _screens[_screens.keys.elementAt(i)];
      _currentTab = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(_screens.keys.elementAt(_currentTab)),
        backgroundColor: mainScreen,
        elevation: 0,
      ),
      body: SafeArea(
        child: PageStorage(
          child: _currentScreen!,
          bucket: _bucket,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        items: _generateBottomNavbarItem(),
        onTap: (i) => _changeScreen(i),
        unselectedItemColor: const Color(0xFFCCCCCC),
        selectedItemColor: mainColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(
          color: mainColor,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }
}
