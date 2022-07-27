import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_akhir/constants/colors.dart';
import 'package:project_akhir/constants/string.dart';
import 'package:project_akhir/models/category_activity.dart';

class CategoryProvider with ChangeNotifier {
  // Error ketika get _categories , kalau list _categories empty, aplikasi bekerja seperti biasa
  List<CategoryActivity> _categories = [
    CategoryActivity(
      id: 'sport',
      theme: sportScreen,
      svgIcon: sportIcon,
      title: 'Sport',
      desc: sportDesc,
      textColor: textColorSport,
    ),
    CategoryActivity(
      id: 'health_care',
      theme: healthCareScreen,
      svgIcon: healthCareIcon,
      title: 'Health Care',
      desc: healthCareDesc,
      textColor: textColorHealth,
    ),
    CategoryActivity(
      id: 'shopping',
      theme: shoppingScreen,
      svgIcon: shoppingIcon,
      title: 'Shopping',
      desc: shoppingDesc,
      textColor: textColorShopping,
    ),
    CategoryActivity(
      id: 'for_fun',
      theme: Color(0xFFFFFFFF),
      svgIcon: forFunIcon,
      title: 'For Fun',
      desc: forFunDesc,
      textColor: textColorForFun,
    ),
  ];

  List<CategoryActivity> get getCategories {
    return [..._categories];
  }

  CategoryActivity getSingleCategory(String id) {
    return _categories.firstWhere((category) => category.id == id);
  }
}
