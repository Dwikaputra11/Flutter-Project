import 'package:flutter/material.dart';
import 'package:tugas_flutter/view/chat.dart';
import 'package:tugas_flutter/view/collection.dart';
import 'package:tugas_flutter/view/home.dart';
import 'package:tugas_flutter/view/login.dart';
import 'package:tugas_flutter/view/profile.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case '/': 
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => Home());
      case '/collection':
        return MaterialPageRoute(builder: (_) => Collection());
      case '/chat':
        return MaterialPageRoute(builder: (_) => Chat());
      case '/profile':
        return MaterialPageRoute(builder: (_) => Profile()); 
      default:
        return _errorRoute();
    }
  }
  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(title: Text('Error'),),
        body: Center(child: Text('Error Page'),),
      );
    });
  }
}
