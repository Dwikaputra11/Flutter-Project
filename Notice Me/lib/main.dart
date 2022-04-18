import 'package:flutter/material.dart';
import 'package:project_akhir/constants/colors.dart';
import 'package:project_akhir/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daily List',
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: backgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: textColorApp),
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}