import 'package:flutter/material.dart';
import 'package:tugas_flutter/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: Colors.white,
        // textTheme: Theme.of(context).textTheme.apply(displayColor: ),
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      // onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
