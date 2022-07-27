import 'package:flutter/widgets.dart';

class Activity with ChangeNotifier{
  String? id = DateTime.now().toIso8601String();
  String name;
  String time;
  String reminder;
  String category;
  String note;
  Color textColor;
  bool isFinish;

  Activity({
    required this.name,
    required this.time,
    required this.reminder,
    required this.category,
    required this.note,
    required this.textColor,
    this.isFinish = false,
  });

  void _setFinishValue(bool newValue){
    isFinish = newValue;
    notifyListeners();
  }

  void toggleFinishStatus(){
    final oldStatus = isFinish;
    _setFinishValue(!isFinish);
  }
}