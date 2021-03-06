import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_flutter/assets/colors/color.dart';
import 'package:tugas_flutter/screens/home.dart';
import 'package:tugas_flutter/screens/on_boarding.dart';
import 'package:tugas_flutter/screens/sign_up.dart';
import 'package:tugas_flutter/screens/splash_screen.dart';
import 'package:tugas_flutter/services/chat_provider.dart';
import 'package:tugas_flutter/services/job_provider.dart';
import 'package:tugas_flutter/services/user_profile_provider.dart';

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
        ChangeNotifierProvider.value(
          value: JobProvider(),
        ),
        ChangeNotifierProvider.value(
          value: UserProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: Color(0xFFA994FF)),
            fontFamily: 'Roboto',
            scaffoldBackgroundColor: const Color(0xFFF8F8F8),
            // textTheme: Theme.of(context).textTheme.apply(displayColor: ),
            primarySwatch: ColorTheme.primaryColor,
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: ColorTheme.primaryColor,
            ).copyWith(secondary: Colors.amber, onPrimary: Colors.white)),
        home: const OnBoarding(),
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
