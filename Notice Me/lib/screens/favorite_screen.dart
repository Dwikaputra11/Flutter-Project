import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_akhir/providers/activity_provider.dart';
import 'package:project_akhir/providers/category_provider.dart';
import 'package:provider/provider.dart';

import 'activity_detail_screen.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = Provider.of<CategoryProvider>(context, listen: false);
    final activities = Provider.of<ActivityProvider>(context, listen: false);
    activities.setFinishActivities();
    final finishActivity = activities.getFinishActivities;
    var size = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: finishActivity.length,
        itemBuilder: (ctx, i) => InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ActivityDetailScreen(
                        activityDetail: finishActivity[i],
                        category: category
                            .getSingleCategory(finishActivity[i].category)
                            .title,
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
                          Text(
                            finishActivity[i].name,
                            style: TextStyle(
                              color: category.getSingleCategory(finishActivity[i].category).textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'images/time.svg',
                                color: category.getSingleCategory(finishActivity[i].category).textColor,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                finishActivity[i].time,
                                style: TextStyle(
                                  color: category.getSingleCategory(finishActivity[i].category).textColor,
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
                                color: category.getSingleCategory(finishActivity[i].category).textColor,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                finishActivity[i].reminder,
                                style: TextStyle(
                                  color: category.getSingleCategory(finishActivity[i].category).textColor,
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
                                color: category.getSingleCategory(finishActivity[i].category).textColor,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                category.getSingleCategory(finishActivity[i].category).title,
                                style: TextStyle(
                                  color: category.getSingleCategory(finishActivity[i].category).textColor,
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
            ));
  }
}
