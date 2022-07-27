import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/colors.dart';
import '../../constants/string.dart';
import '../models/activity.dart';

class DetailScreenWeb extends StatelessWidget {
  final Activity activityDetail;
  final String category;
  const DetailScreenWeb({
    Key? key,
    required this.activityDetail,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? screenTheme;
    var size = MediaQuery.of(context).size;
    if (category == sportTitle) {
      screenTheme = sportScreen;
    } else if (category == healthCareTitle) {
      screenTheme = healthCareScreen;
    } else if (category == shoppingTitle) {
      screenTheme = shoppingScreen;
    } else if (category == forFunTitle) {
      screenTheme = forFunScreen;
    }
    var color = activityDetail.textColor;
    var textStyle = TextStyle(fontSize: 14, color: color);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .30,
            decoration: BoxDecoration(
              color: screenTheme,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
          ),
          SafeArea(
              child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  activityDetail.name,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(fontWeight: FontWeight.w700, color: color),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'images/time.svg',
                      height: 20,
                      width: 20,
                      color: color,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      activityDetail.time,
                      style: textStyle,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'images/reminder.svg',
                      height: 20,
                      width: 20,
                      color: color,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      activityDetail.reminder,
                      style: textStyle,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'images/category.svg',
                      height: 20,
                      width: 20,
                      color: color,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      category,
                      style: textStyle,
                    )
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Row(
                  children: [
                    Container(
                      width: 5,
                      height: 80,
                      decoration: const BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          borderRadius:
                              BorderRadius.all( Radius.circular(10))),
                    ),
                    Container(
                      height: 80,
                      width: size.width * .90,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          activityDetail.note,
                          style: textStyle,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}