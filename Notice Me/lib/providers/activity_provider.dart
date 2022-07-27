import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../db/db_helper.dart';
import '../models/activity.dart';

class ActivityProvider with ChangeNotifier {
  List<Activity> _activitiesByCategory = [];
  List<Activity> _finishActivities = [];
  List<Activity> _activities = [
    Activity(
      name: "Morning Walk",
      time: "Tuesday, 12 November 2022",
      reminder: "30 mins before",
      note:
          "Olahraga adalah bentuk aktivitas fisik yang biasanya bersifat kompetitif dengan tujuan untuk meningkatkan kemampuan dan keterampilan fisik seseorang seraya memberikan hiburan bagi pemain ataupun penonton.",
      category: 'sport',
      textColor: textColorSport,
    ),
    Activity(
      name: "Yoga",
      time: "Wednesday, 10 October 2022",
      reminder: "15 mins before",
      note:
          "Yoga adalah sebuah aktivitas fisik yang melibatkan meditasi dengan teknik peregangan, pernapasan, keseimbangan, dan kelenturan tubuh untuk mencapai keselarasan dan harmoni antara emosi, jiwa, mental, spiritualitas, dan tubuh Anda.",
      category: 'sport',
      textColor: textColorSport,
    ),
    Activity(
      name: "Gym",
      time: "Sunday, 23 January 2022",
      reminder: "45 mins before",
      note:
          "Gym dapat diartikan sebagai tempat atau lokasi untuk melakukan kegiatan latihan dan olahraga seperti layanan senam, atletik, dan ataupun juga kardio.",
      category: 'sport',
      textColor: textColorSport,
    ),
    Activity(
      name: "Drink the Pill",
      time: "Tuesday, 12 November 2022",
      reminder: "30 mins before",
      note:
          "Olahraga adalah bentuk aktivitas fisik yang biasanya bersifat kompetitif dengan tujuan untuk meningkatkan kemampuan dan keterampilan fisik seseorang seraya memberikan hiburan bagi pemain ataupun penonton.",
      category: 'heatlh_care',
      textColor: textColorHealth,
    ),
    Activity(
      name: "Buy Medicine",
      time: "Wednesday, 10 October 2022",
      reminder: "15 mins before",
      note:
          "Obat adalah zat apa pun yang menyebabkan perubahan fisiologi atau psikologi organisme saat dikonsumsi. Obat-obatan biasanya dibedakan dari makanan dan zat yang menyediakan nutrisi. Konsumsi obat dapat dilakukan melalui inhalasi, injeksi, merokok, ingesti, absorpsi melalui kulit, atau disolusi di bawah lidah",
      category: 'health_care',
      textColor: textColorHealth,
    ),
    Activity(
      name: "Take Some Rest",
      time: "Sunday, 23 January 2022",
      reminder: "45 mins before",
      note:
          "Belanja merupakan pemerolehan barang atau jasa dari penjual dengan tujuan membeli pada waktu itu. Belanja adalah aktivitas pemilihan dan/atau membeli. Dalam beberapa hal dianggap sebagai sebuah aktivitas kesenggangan juga ekonomi.",
      category: 'health_care',
      textColor: textColorHealth,
    ),
    Activity(
      name: "Monthly Needs",
      time: "Tuesday, 12 November 2022",
      reminder: "30 mins before",
      note:
          "Olahraga adalah bentuk aktivitas fisik yang biasanya bersifat kompetitif dengan tujuan untuk meningkatkan kemampuan dan keterampilan fisik seseorang seraya memberikan hiburan bagi pemain ataupun penonton.",
      category: 'shopping',
      textColor: textColorShopping,
    ),
    Activity(
      name: "Buy Some Clothes",
      time: "Wednesday, 10 October 2022",
      reminder: "15 mins before",
      note:
          "Obat adalah zat apa pun yang menyebabkan perubahan fisiologi atau psikologi organisme saat dikonsumsi. Obat-obatan biasanya dibedakan dari makanan dan zat yang menyediakan nutrisi. Konsumsi obat dapat dilakukan melalui inhalasi, injeksi, merokok, ingesti, absorpsi melalui kulit, atau disolusi di bawah lidah",
      category: 'shopping',
      textColor: textColorShopping,
    ),
    Activity(
      name: "Get Your Package",
      time: "Sunday, 23 January 2022",
      reminder: "45 mins before",
      note:
          "Belanja merupakan pemerolehan barang atau jasa dari penjual dengan tujuan membeli pada waktu itu. Belanja adalah aktivitas pemilihan dan/atau membeli. Dalam beberapa hal dianggap sebagai sebuah aktivitas kesenggangan juga ekonomi.",
      category: 'shopping',
      textColor: textColorShopping,
    ),
    Activity(
      name: "Morning with Valo",
      time: "Tuesday, 12 November 2022",
      reminder: "30 mins before",
      note:
          "Olahraga adalah bentuk aktivitas fisik yang biasanya bersifat kompetitif dengan tujuan untuk meningkatkan kemampuan dan keterampilan fisik seseorang seraya memberikan hiburan bagi pemain ataupun penonton.",
      category: 'for_fun',
      textColor: textColorForFun,
    ),
    Activity(
      name: "Event in Mobile Legend",
      time: "Wednesday, 10 October 2022",
      reminder: "15 mins before",
      note:
          "Obat adalah zat apa pun yang menyebabkan perubahan fisiologi atau psikologi organisme saat dikonsumsi. Obat-obatan biasanya dibedakan dari makanan dan zat yang menyediakan nutrisi. Konsumsi obat dapat dilakukan melalui inhalasi, injeksi, merokok, ingesti, absorpsi melalui kulit, atau disolusi di bawah lidah",
      category: 'for_fun',
      textColor: textColorForFun,
    ),
    Activity(
      name: "Play FIFA with Friends",
      time: "Sunday, 23 January 2022",
      reminder: "45 mins before",
      note:
          "Belanja merupakan pemerolehan barang atau jasa dari penjual dengan tujuan membeli pada waktu itu. Belanja adalah aktivitas pemilihan dan/atau membeli. Dalam beberapa hal dianggap sebagai sebuah aktivitas kesenggangan juga ekonomi.",
      category: 'for_fun',
      textColor: textColorForFun,
    ),
  ];

  List<Activity> get getActivities {
    return [..._activities];
  }

  void setActivitiesByCategory(String category) {
    if (_activitiesByCategory.isNotEmpty) {
      _activitiesByCategory = [];
    }
    _activitiesByCategory =
        _activities.where((activity) => activity.category == category).toList();
    notifyListeners();
  }

  List<Activity> get getActivitiesByCategory {
    return _activitiesByCategory;
  }

  void setFinishActivities() {
    if (_finishActivities.isNotEmpty) {
      _finishActivities = [];
    }
    _finishActivities =
        _activities.where((activity) => activity.isFinish).toList();
  }

  List<Activity> get getFinishActivities {
    return [..._finishActivities];
  }

  void addActivity(Activity activity, BuildContext context) {
    final newActivity = Activity(
      name: activity.name,
      time: activity.time,
      reminder: activity.reminder,
      note: activity.note,
      category: activity.category,
      textColor: activity.textColor,
    );
    _activities.add(newActivity);
    setActivitiesByCategory(activity.category);
    if (kDebugMode) {
      print('Activity Added');
    }
    notifyListeners();
    DBHelper.insert(DBHelper.tableName, {
      'name': newActivity.name,
      'time': newActivity.time,
      'reminder': newActivity.reminder,
      'note': newActivity.note,
      'category': newActivity.category,
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Acitivity Added'),
      ),
    );
  }
  
  Future<void> fetchAndSetActivity() async {
    final dataList = await DBHelper.getData(DBHelper.tableName);
    _activities = dataList
        .map(
          (activity) => Activity(
            name: activity['name'],
            time: activity['time'],
            reminder: activity['reminder'],
            category: activity['category'],
            note: activity['note'],
            textColor: const Color(0xFFFFFFFF),
          ),
        )
        .toList();
  }
}
