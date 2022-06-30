import 'package:flutter/material.dart';
import 'package:tugas_flutter/screens/home.dart';

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
        scaffoldBackgroundColor: Color(0xFFF8F8F8),
        // textTheme: Theme.of(context).textTheme.apply(displayColor: ),
        primarySwatch: Colors.purple,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple).copyWith(secondary: Colors.amber)
      ),
      home: Home(),
      // onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
