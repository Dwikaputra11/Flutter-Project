import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/category_card_list.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          height: size.height * .45,
          decoration: const BoxDecoration(
            color: mainScreen,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Text(
                'Good Morning,\nDwika',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 50,
              ),
              const Expanded(
                child: CategoryCardList(),
              )
            ],
          ),
        )
      ],
    );
  }
}
