import 'package:flutter/material.dart';
import 'package:project_akhir/widgets/drawer.dart';

import '../../constants/colors.dart';
import '../widgets/category_card_list.dart';

class MainScreenWeb extends StatelessWidget {
  final int gridCount;
  const MainScreenWeb({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('Home'),
        elevation: 0 ,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .30,
            decoration: const BoxDecoration(
              color: mainScreen,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(20)),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  Text('Good Morning,\nDwika',
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontWeight: FontWeight.w700)
                      ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Expanded(
                    child: CategoryCardList(),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
