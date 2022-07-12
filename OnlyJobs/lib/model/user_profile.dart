import 'package:flutter/cupertino.dart';

class UserProfile with ChangeNotifier {
  final String id;
  final String name;
  final int age;
  final String description;
  final String currentJob;
  List<String>? skills;
  List<Map<String,String>>? experiences;

  UserProfile({
    required this.id,
    required this.name,
    required this.age,
    required this.description,
    required this.currentJob,
    this.skills,
    this.experiences,
  });
  
}
