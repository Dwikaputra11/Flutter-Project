import 'package:flutter/widgets.dart';
import 'package:project_akhir/constants/colors.dart';

class DailyList{
  String name;
  String time;
  String reminder;
  String note;
  Color textColor;

  DailyList({
    required this.name,
    required this.time,
    required this.reminder,
    required this.note,
    required this.textColor,
  });
}

var sportList = [
  DailyList(
    name: "Morning Walk", 
    time: "Tuesday, 12 November 2022", 
    reminder: "30 mins before", 
    note: "Olahraga adalah bentuk aktivitas fisik yang biasanya bersifat kompetitif dengan tujuan untuk meningkatkan kemampuan dan keterampilan fisik seseorang seraya memberikan hiburan bagi pemain ataupun penonton.",
    textColor: textColorSport,
    ),
  DailyList(
    name: "Yoga", 
    time: "Wednesday, 10 October 2022", 
    reminder: "15 mins before", 
    note: "Yoga adalah sebuah aktivitas fisik yang melibatkan meditasi dengan teknik peregangan, pernapasan, keseimbangan, dan kelenturan tubuh untuk mencapai keselarasan dan harmoni antara emosi, jiwa, mental, spiritualitas, dan tubuh Anda.",
    textColor: textColorSport,
    ),
  DailyList(
    name: "Gym", 
    time: "Sunday, 23 January 2022", 
    reminder: "45 mins before", 
    note: "Gym dapat diartikan sebagai tempat atau lokasi untuk melakukan kegiatan latihan dan olahraga seperti layanan senam, atletik, dan ataupun juga kardio.",
    textColor: textColorSport,
    )
];

var healthCareList = [
  DailyList(
    name: "Drink the Pill", 
    time: "Tuesday, 12 November 2022", 
    reminder: "30 mins before", 
    note: "Olahraga adalah bentuk aktivitas fisik yang biasanya bersifat kompetitif dengan tujuan untuk meningkatkan kemampuan dan keterampilan fisik seseorang seraya memberikan hiburan bagi pemain ataupun penonton.",
    textColor: textColorHealth,
    ),
  DailyList(
    name: "Buy Medicine", 
    time: "Wednesday, 10 October 2022", 
    reminder: "15 mins before", 
    note: "Obat adalah zat apa pun yang menyebabkan perubahan fisiologi atau psikologi organisme saat dikonsumsi. Obat-obatan biasanya dibedakan dari makanan dan zat yang menyediakan nutrisi. Konsumsi obat dapat dilakukan melalui inhalasi, injeksi, merokok, ingesti, absorpsi melalui kulit, atau disolusi di bawah lidah",
    textColor: textColorHealth,
    ),
  DailyList(
    name: "Take Some Rest", 
    time: "Sunday, 23 January 2022", 
    reminder: "45 mins before", 
    note: "Belanja merupakan pemerolehan barang atau jasa dari penjual dengan tujuan membeli pada waktu itu. Belanja adalah aktivitas pemilihan dan/atau membeli. Dalam beberapa hal dianggap sebagai sebuah aktivitas kesenggangan juga ekonomi.",
    textColor: textColorHealth,
    )
];

var shoppingList = [
  DailyList(
    name: "Monthly Needs", 
    time: "Tuesday, 12 November 2022", 
    reminder: "30 mins before", 
    note: "Olahraga adalah bentuk aktivitas fisik yang biasanya bersifat kompetitif dengan tujuan untuk meningkatkan kemampuan dan keterampilan fisik seseorang seraya memberikan hiburan bagi pemain ataupun penonton.",
    textColor: textColorShopping,
    ),
  DailyList(
    name: "Buy Some Clothes", 
    time: "Wednesday, 10 October 2022", 
    reminder: "15 mins before", 
    note: "Obat adalah zat apa pun yang menyebabkan perubahan fisiologi atau psikologi organisme saat dikonsumsi. Obat-obatan biasanya dibedakan dari makanan dan zat yang menyediakan nutrisi. Konsumsi obat dapat dilakukan melalui inhalasi, injeksi, merokok, ingesti, absorpsi melalui kulit, atau disolusi di bawah lidah",
    textColor: textColorShopping,
    ),
  DailyList(
    name: "Get Your Package", 
    time: "Sunday, 23 January 2022", 
    reminder: "45 mins before", 
    note: "Belanja merupakan pemerolehan barang atau jasa dari penjual dengan tujuan membeli pada waktu itu. Belanja adalah aktivitas pemilihan dan/atau membeli. Dalam beberapa hal dianggap sebagai sebuah aktivitas kesenggangan juga ekonomi.",
    textColor: textColorShopping,
    )
];

var forFunlist = [
  DailyList(
    name: "Morning with Valo", 
    time: "Tuesday, 12 November 2022", 
    reminder: "30 mins before", 
    note: "Olahraga adalah bentuk aktivitas fisik yang biasanya bersifat kompetitif dengan tujuan untuk meningkatkan kemampuan dan keterampilan fisik seseorang seraya memberikan hiburan bagi pemain ataupun penonton.",
    textColor: textColorForFun,
    ),
  DailyList(
    name: "Event in Mobile Legend", 
    time: "Wednesday, 10 October 2022", 
    reminder: "15 mins before", 
    note: "Obat adalah zat apa pun yang menyebabkan perubahan fisiologi atau psikologi organisme saat dikonsumsi. Obat-obatan biasanya dibedakan dari makanan dan zat yang menyediakan nutrisi. Konsumsi obat dapat dilakukan melalui inhalasi, injeksi, merokok, ingesti, absorpsi melalui kulit, atau disolusi di bawah lidah",
    textColor: textColorForFun,
    ),
  DailyList(
    name: "Play FIFA with Friends", 
    time: "Sunday, 23 January 2022", 
    reminder: "45 mins before", 
    note: "Belanja merupakan pemerolehan barang atau jasa dari penjual dengan tujuan membeli pada waktu itu. Belanja adalah aktivitas pemilihan dan/atau membeli. Dalam beberapa hal dianggap sebagai sebuah aktivitas kesenggangan juga ekonomi.",
    textColor: textColorForFun,
    )
];