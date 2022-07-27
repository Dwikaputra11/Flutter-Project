import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_akhir/providers/activity_provider.dart';
import 'package:project_akhir/providers/category_provider.dart';
import 'package:provider/provider.dart';

import '../models/activity.dart';
import '../screens/activity_detail_screen.dart';
import 'checkButton.dart';

class CategoryActivityList extends StatelessWidget {
  const CategoryActivityList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var categoryList = Provider.of<ActivityProvider>(context).getActivitiesByCategory;
    var category = Provider.of<CategoryProvider>(context, listen: false).getSingleCategory(categoryList[0].category);
    var size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: categoryList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final Activity dailyActivity = categoryList[index];
        return ChangeNotifierProvider.value(
          value: categoryList[index],
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ActivityDetailScreen(
                      activityDetail: dailyActivity,
                      category: category.title,
                    );
                  },
                ),
              );
            },
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              child: Card(
                child: Container(
                  width: size.width * 0.9,
                  height: 140,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              categoryList[index].name,
                              style: TextStyle(
                                color: category.textColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            CheckButton(
                              color: category.textColor,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'images/time.svg',
                              color: category.textColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              categoryList[index].time,
                              style: TextStyle(
                                color: category.textColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'images/reminder.svg',
                              color: category.textColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              categoryList[index].reminder,
                              style: TextStyle(
                                color: category.textColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'images/category.svg',
                              color: category.textColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              category.title,
                              style: TextStyle(
                                color: category.textColor,
                                fontSize: 12,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
