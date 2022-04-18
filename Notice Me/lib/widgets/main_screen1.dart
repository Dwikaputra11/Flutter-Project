// import 'package:flutter/material.dart';
// import 'package:project_akhir/widgets/detail_screen.dart';
// import 'package:project_akhir/model/daily_list.dart';
// import 'package:project_akhir/constants/colors.dart';


// class MainScreen1 extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Container(
//         height: size.height,
//         child:Column(
//           children: <Widget>[
//             Container(
//                 decoration: BoxDecoration(
//                   color: mainScreen,
//                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
//                 ),
//                 height: size.height*.20,
//                 child: SafeArea(
//                   child: Container(
//                     padding: const EdgeInsets.all(16),
//                     alignment: Alignment.bottomCenter,
//                     child: Row(
//                       // crossAxisAlignment: CrossAxisAlignment.stretch,
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Column(
//                           children: [
//                             CircleAvatar(
//                               radius: 30,
//                               backgroundImage: AssetImage(
//                                 'images/profile.jpg',
//                               ),
//                             )
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Hello Dwika',
//                                   style: TextStyle(
//                                     fontFamily: 'Roboto',
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 16,
//                                     color: userProfile,
//                                   ),
//                                 )
//                               ],
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   '20 yrs - Denpasar',
//                                   style: TextStyle(
//                                     fontFamily: 'Roboto',
//                                     fontWeight: FontWeight.normal,
//                                     fontSize: 16,
//                                     color: Color.fromARGB(255, 102, 102, 102),
//                                   ),
//                                 )
//                               ],
//                             )
//                           ],
//                         ),
//                       ],
//                     )    
//                   ),
//                 )
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
//                       Text(
//                         'Task(3)',
//                         style: TextStyle(
//                           color: Color.fromARGB(255, 96, 97, 100),
//                           fontSize: 20,
//                           fontFamily: 'Roboto',
//                         ),
//                         textAlign: TextAlign.start,
//                       ), 
//                       ListView.builder(itemBuilder: (context, index) {
//                         final DailyList dailyActivity = dailyList[index];
//                         return InkWell(
//                           onTap: () {
//                             Navigator.push(context, MaterialPageRoute(builder: (context){
//                               // return DetailScreen(dailyActivity: dailyActivity,);
//                             }));
//                           },
//                           child: Card(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   dailyActivity.name, 
//                                   style: TextStyle(
//                                     color: boldFontSport,
//                                     fontWeight: FontWeight.bold,
//                                     fontFamily: 'OpenSans',
//                                   ),
//                                 ),
//                                 Text(
//                                   dailyActivity.time,
//                                   style: TextStyle(
//                                     color: regularFontSport,
//                                     fontWeight: FontWeight.normal,
//                                     fontFamily: 'OpenSans',
//                                   ),
//                                 ),
//                                 Text(
//                                   dailyActivity.reminder,
//                                   style: TextStyle(
//                                     color: regularFontSport,
//                                     fontWeight: FontWeight.normal,
//                                     fontFamily: 'OpenSans',
//                                   ),
//                                 ) 
//                               ],
//                             ),
//                           ),
//                         );
//                       },)
//                     ],
//                   )
//                 ),
//               ),
//           ],
//         )
//       )
//     ); 
//   }
// }