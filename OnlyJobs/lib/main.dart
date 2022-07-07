import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_flutter/screens/home.dart';
import 'package:tugas_flutter/screens/on_boarding.dart';
import 'package:tugas_flutter/screens/splash_screen.dart';
import 'package:tugas_flutter/services/chat_provider.dart';

import 'routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: ChatProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: 'Roboto',
            scaffoldBackgroundColor: const Color(0xFFF8F8F8),
            // textTheme: Theme.of(context).textTheme.apply(displayColor: ),
            primarySwatch: Colors.purple,
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
                .copyWith(secondary: Colors.amber)),
        home: const OnBoarding(),
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
