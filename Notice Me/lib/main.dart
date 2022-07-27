import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_akhir/constants/colors.dart';
import 'package:project_akhir/providers/activity_provider.dart';
import 'package:project_akhir/providers/category_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'screens/on_boarding_screen.dart';
import 'screens/web_main_screen.dart';

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
        ChangeNotifierProvider(create: (_) => ActivityProvider()),
        ChangeNotifierProvider(create: (_) => CategoryProvider()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Daily List',
        theme: ThemeData(
          fontFamily: 'Cairo',
          scaffoldBackgroundColor: backgroundColor,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: textColorApp),
          inputDecorationTheme: const InputDecorationTheme(
            floatingLabelStyle: TextStyle(color: Colors.amber),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.amber),
            ),
          ),
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: mainColor,
          ).copyWith(onPrimary: Colors.white, secondary: Colors.amber),
          primarySwatch: mainColor,
        ),
        home: LayoutBuilder(
          builder: (context, constraints) {
            if (defaultTargetPlatform == TargetPlatform.iOS ||
                defaultTargetPlatform == TargetPlatform.android) {
              return const OnBoardingScreen();
            } else if (kIsWeb) {
              if (constraints.maxWidth <= 1400) {
                return const MainScreenWeb(gridCount: 2);
              } else {
                return const MainScreenWeb(gridCount: 4);
              }
            } else {
              return const Center(
                child: Text('Your system is not detected'),
              );
            }
          },
        ),
      ),
    );
  }
}
