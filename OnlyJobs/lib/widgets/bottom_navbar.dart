// import 'package:flutter/material.dart';

// class BottomNavbar extends StatefulWidget {
//   final Function(int index) changeScreen;
//   final int currentTab;
//   const BottomNavbar({
//     Key? key,
//     required this.changeScreen,
//     required this.currentTab,
//   }) : super(key: key);

//   @override
//   State<BottomNavbar> createState() => _BottomNavbarState();
// }

// class _BottomNavbarState extends State<BottomNavbar> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//           height: 65,
//           child: Padding(
//             padding: const EdgeInsets.only(left: 10.0,right: 10.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     MaterialButton(
//                       minWidth: 40,
//                       onPressed: () {
                        
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(
//                             currentTab==0?Icons.home:Icons.home_outlined,
//                             color: currentTab==0?Color(0xFFA994FF):Color(0xFFCCCCCC),
//                           ),
//                           Text(
//                             'Home',
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     MaterialButton(
//                       minWidth: 40,
//                       onPressed: curee
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(
//                             currentTab==1?Icons.bookmark:Icons.bookmark_border_outlined,
//                             color: currentTab==1?Color(0xFFA994FF):Color(0xFFCCCCCC),
//                           ),
//                           Text(
//                             'Collection',
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     MaterialButton(
//                       minWidth: 40,
//                       onPressed: () {
//                         setState(() {
//                           currentScreen = Chat();
//                           currentTab = 2;
//                         });
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           SvgPicture.asset(
//                             currentTab==2?'lib/assets/img/tugas13/chat_active.svg':'lib/assets/img/tugas13/chat.svg',
//                             height: 20,
//                             width: 20,
//                             color: currentTab==2?Color(0xFFA994FF):Color(0xFFCCCCCC),
//                           ),
//                           Text(
//                             'Chat',
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     MaterialButton(
//                       minWidth: 40,
//                       onPressed: () {
//                         setState(() {
//                           currentScreen = Profile();
//                           currentTab = 3;
//                         });
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(
//                             currentTab==3?Icons.person:Icons.person_outline,
//                             color: currentTab==3?Color(0xFFA994FF):Color(0xFFCCCCCC),
//                           ),
//                           Text(
//                             'Profile',
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         )
//   }
// }