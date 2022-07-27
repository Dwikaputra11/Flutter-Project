import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:project_akhir/providers/category_provider.dart';
import 'package:provider/provider.dart';
import 'package:project_akhir/providers/activity_provider.dart';
import 'package:project_akhir/screens/category_detail_screen.dart';

class CategoryCardList extends StatelessWidget {
  const CategoryCardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('CategoryCardList => build');
    }
    return LayoutBuilder(builder: (context, constraints) {
      var size = MediaQuery.of(context).size;
      if (size.width <= 600) {
        return const CardListMobile();
      } else if (size.width <= 1200) {
        return const CardListWeb(sizeIcon: 150.0);
      } else {
        return const CardListWeb(sizeIcon: 200.0);
      }
    });
  }
}

class CardListMobile extends StatelessWidget {

  const CardListMobile({
    Key? key,
  }) : super(key: key);

  void _setCategories(String category, BuildContext context){
    Provider.of<ActivityProvider>(context, listen: false).setActivitiesByCategory(category);
    Get.to(() => const CategoryDetailScreen());
  } // karena kita melakukan perubahan nilai sehingga ada notifylistener maka harus berada classnya sendiri


  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('CardListMobile => build');
    }
    var categories =
        Provider.of<CategoryProvider>(context, listen: false).getCategories;
    var size = MediaQuery.of(context).size;
    return GridView.builder(
      itemCount: categories.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 30,
        crossAxisSpacing: 30,
        childAspectRatio: .95,
      ),
      itemBuilder: (ctx, index) => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: InkWell(
          onTap: (){
            _setCategories(categories[index].id, ctx);
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                const Spacer(),
                SvgPicture.asset(categories[index].svgIcon),
                const Spacer(),
                Text(
                  categories[index].title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardListWeb extends StatelessWidget {
  final double sizeIcon;
  const CardListWeb(
      {Key? key, required this.sizeIcon})
      : super(key: key);

  void _setCategories(String category, BuildContext context){
    Provider.of<ActivityProvider>(context, listen: false).setActivitiesByCategory(category);
    Get.to(() => const CategoryDetailScreen());
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('CardListWeb => build');
    }
    var categories =
        Provider.of<CategoryProvider>(context, listen: false).getCategories;
    return GridView.builder(
      itemCount: categories.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 30,
        crossAxisSpacing: 30,
        childAspectRatio: .95,
      ),
      itemBuilder: (ctx, index) => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: InkWell(
          onTap: (){
            _setCategories(categories[index].id, ctx);
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                const Spacer(),
                SvgPicture.asset(categories[index].svgIcon,height: sizeIcon,
                    width: sizeIcon,),
                const Spacer(),
                Text(
                  categories[index].title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
