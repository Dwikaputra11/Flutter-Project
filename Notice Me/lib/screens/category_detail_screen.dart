import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:project_akhir/constants/colors.dart';
import 'package:project_akhir/providers/activity_provider.dart';
import 'package:project_akhir/providers/category_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/category_activity_list.dart';

class CategoryDetailScreen extends StatelessWidget {
  const CategoryDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth <= 600) {
        return const CategoryScreenMobile();
      } else if (constraints.maxWidth <= 1400) {
        return const CategoryScreenWeb(iconSize: 150);
      } else {
        return const CategoryScreenWeb(iconSize: 200);
      }
    }));
  }
}

class CategoryScreenMobile extends StatelessWidget {
  const CategoryScreenMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var activityList =
        Provider.of<ActivityProvider>(context).getActivitiesByCategory;
    var category = Provider.of<CategoryProvider>(context, listen: false)
        .getSingleCategory(activityList[0].category);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            Container(
              height: size.height * .40,
              decoration: BoxDecoration(
                color: category.theme,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
            SafeArea(
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // SizedBox(
                  //   height: size.height * 0.02,
                  // ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios_new_rounded, color: category.textColor,),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      Text(
                        category.title,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: category.textColor),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: size.width * 0.50,
                              child: Text(
                                category.desc,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: category.textColor, fontSize: 12),
                              ),
                            ),
                            SvgPicture.asset(category.svgIcon),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const CategoryActivityList(),
                      ],
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class CategoryScreenWeb extends StatelessWidget {
  final double iconSize;

  const CategoryScreenWeb({
    Key? key,
    required this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var activityList = Provider.of<ActivityProvider>(context, listen: false)
        .getActivitiesByCategory;
    var category = Provider.of<CategoryProvider>(context, listen: false)
        .getSingleCategory(activityList[0].category);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .40,
            decoration: BoxDecoration(
              color: category.theme,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
          ),
          SafeArea(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // SizedBox(,),
                  Text(
                    category.title,
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        fontWeight: FontWeight.w700, color: category.textColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * 0.40,
                          child: Text(
                            category.desc,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: category.textColor),
                          ),
                        ),
                        SvgPicture.asset(
                          category.svgIcon,
                          width: iconSize,
                          height: iconSize,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CategoryActivityList(),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
