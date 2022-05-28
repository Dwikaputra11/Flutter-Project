import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tugas_flutter/Widgets/drawer.dart';
import 'package:tugas_flutter/view/chat.dart';
import 'package:tugas_flutter/view/collection.dart';
import 'package:tugas_flutter/view/dashboard.dart';
import 'package:tugas_flutter/view/profile.dart';
import 'package:tugas_flutter/Widgets/drawer.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab  = 0;
  final List<Widget> screens = [
    Dashboard(),
    Collection(),
    Chat(),
    Profile(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('OnlyJobs'),
        backgroundColor: Color(0xFFA994FF),
      ),
      drawer: DrawerScreen(),
      backgroundColor: Color(0xFFF8F8F8),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 65,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() { // request refresh the state
                          currentScreen = Dashboard();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            currentTab==0?Icons.home:Icons.home_outlined,
                            color: currentTab==0?Color(0xFFA994FF):Color(0xFFCCCCCC),
                          ),
                          Text(
                            'Home',
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Collection();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            currentTab==1?Icons.bookmark:Icons.bookmark_border_outlined,
                            color: currentTab==1?Color(0xFFA994FF):Color(0xFFCCCCCC),
                          ),
                          Text(
                            'Collection',
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Chat();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            currentTab==2?'assets/img/tugas13/chat_active.svg':'assets/img/tugas13/chat.svg',
                            height: 20,
                            width: 20,
                            color: currentTab==2?Color(0xFFA994FF):Color(0xFFCCCCCC),
                          ),
                          Text(
                            'Chat',
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Profile();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            currentTab==3?Icons.person:Icons.person_outline,
                            color: currentTab==3?Color(0xFFA994FF):Color(0xFFCCCCCC),
                          ),
                          Text(
                            'Profile',
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}