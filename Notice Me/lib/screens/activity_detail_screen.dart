import 'package:flutter/material.dart';
import 'package:project_akhir/models/activity.dart';
import 'mobile_detail_screen.dart';
import 'web_detail_screen.dart';

class ActivityDetailScreen extends StatelessWidget {
  final Activity activityDetail;
  final String category;
  const ActivityDetailScreen({
    Key? key,
    required this.activityDetail,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth <= 900) {
        return DetailScreenMobile(
            activityDetail: activityDetail, category: category);
      } else if (constraints.maxWidth <= 1200) {
        return DetailScreenWeb(
            activityDetail: activityDetail, category: category);
      } else {
        return DetailScreenWeb(
            activityDetail: activityDetail, category: category);
      }
    }));
  }
}


