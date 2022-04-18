import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_akhir/constants/colors.dart';
import 'package:project_akhir/constants/string.dart';
import 'package:project_akhir/model/daily_list.dart';
import 'package:project_akhir/screens/detail_screen.dart';
import 'package:project_akhir/widgets/checkButton.dart';

class CategoryScreen extends StatelessWidget{
  final List<DailyList> dailyListCategory;
  CategoryScreen({required this.dailyListCategory});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder: ((context, constraints) {
        if(constraints.maxWidth <= 600){
          return CategoryScreenMobile(dailyListCategory: dailyListCategory);
        }else if(constraints.maxWidth <= 1400){
          return CategoryScreenWeb(dailyListCategory: dailyListCategory, iconSize: 150);
        }else{
          return CategoryScreenWeb(dailyListCategory: dailyListCategory, iconSize: 200);
        }
      }) 
    );
  }
}

class CategoryScreenMobile extends StatelessWidget{
  final List<DailyList> dailyListCategory;
  CategoryScreenMobile({required this.dailyListCategory});

  @override
  Widget build(BuildContext context) {
    var category;
    var categoryDesc;
    var screenTheme;
    var textColor;
    var srcIcon;
    var size = MediaQuery.of(context).size;
    if(dailyListCategory == sportList){
      srcIcon = sportIcon;
      screenTheme = sportScreen;
      textColor = textColorSport;
      category = sportTitle;
      categoryDesc = sportDesc;
    }else if(dailyListCategory == healthCareList) {
      srcIcon = healthCareIcon;
      screenTheme = healthCareScreen;
      textColor = textColorHealth;
      category = healthCareTitle;
      categoryDesc = healthCareDesc;
    }else if(dailyListCategory == shoppingList){
      srcIcon = shoppingIcon;
      screenTheme = shoppingScreen;
      textColor = textColorShopping;
      category = shoppingTitle;
      categoryDesc = shoppingDesc;
    }else if(dailyListCategory == forFunlist){
      srcIcon = forFunIcon;
      screenTheme = ForFunScreen;
      category = forFunTitle;
      categoryDesc = forFunDesc;
      textColor = textColorForFun;
    }
    else srcIcon = null;
    // TODO: implement build
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height*.40,
            decoration: BoxDecoration(
              color: screenTheme,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: size.height * 0.02,),
                    Text(
                      category,
                      style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(fontWeight: FontWeight.w700,color: textColor),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: size.width * 0.50,
                          child: Text(
                            categoryDesc,
                            style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: textColor, fontSize: 12),
                          ),
                        ),
                        SvgPicture.asset(srcIcon),
                      ],
                    ),
                    SizedBox(height: 30,),
                    CardCategoryList(dailyListCategory: dailyListCategory)
                  ],
                ),
              ),
            ) 
          ),
        ],
      ),
    );
  }
}

class CardCategoryList extends StatelessWidget{
  final List<DailyList> dailyListCategory;

  CardCategoryList({
    required this.dailyListCategory,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var size = MediaQuery.of(context).size;
    var textColor;
    var srcIcon;
    var category;
    if(dailyListCategory == sportList){
      srcIcon = sportIcon;
      textColor = textColorSport;
      category = sportTitle;
    }else if(dailyListCategory == healthCareList) {
      srcIcon = healthCareIcon;
      textColor = textColorHealth;
      category = healthCareTitle;
    }else if(dailyListCategory == shoppingList){
      srcIcon = shoppingIcon;
      textColor = textColorShopping;
      category = shoppingTitle;
    }else if(dailyListCategory == forFunlist){
      srcIcon = forFunIcon;
      category =forFunTitle;
      textColor = textColorForFun;
    }
    else srcIcon = null;
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final DailyList dailyActivity = dailyListCategory[index];
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return DetailScreen(activityDetail: dailyActivity,category: category);
            })); 
          },
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Card(
              child: Container(
                width: size.width*0.9,
                height: 140,
                decoration: BoxDecoration(
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
                            dailyActivity.name,
                            style: TextStyle(
                              color: textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          CheckButton(color: textColor,),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('images/time.svg',color: textColor,),
                          SizedBox(width: 10,),
                          Text(
                            dailyActivity.time,
                            style: TextStyle(
                              color: textColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 7,),
                      Row(
                        children: [
                          SvgPicture.asset('images/reminder.svg',color: textColor,),
                          SizedBox(width: 10,),
                          Text(
                            dailyActivity.reminder,
                            style: TextStyle(
                              color: textColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 7,),
                      Row(
                        children: [
                          SvgPicture.asset('images/category.svg',color: textColor,),
                          SizedBox(width: 10,),
                          Text(
                            'Sport',
                            style: TextStyle(
                              color: textColor,
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
        );
      },
      itemCount: dailyListCategory.length,
    );
  }
}

class CategoryScreenWeb extends StatelessWidget{
  final List<DailyList> dailyListCategory;
  final double iconSize;

  CategoryScreenWeb({required this.dailyListCategory, required this.iconSize});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var category;
    var categoryDesc;
    var screenTheme;
    var textColor;
    var srcIcon;
    var size = MediaQuery.of(context).size;
    if(dailyListCategory == sportList){
      srcIcon = sportIcon;
      screenTheme = sportScreen;
      textColor = textColorSport;
      category = sportTitle;
      categoryDesc = sportDesc;
    }else if(dailyListCategory == healthCareList) {
      srcIcon = healthCareIcon;
      screenTheme = healthCareScreen;
      textColor = textColorHealth;
      category = healthCareTitle;
      categoryDesc = healthCareDesc;
    }else if(dailyListCategory == shoppingList){
      srcIcon = shoppingIcon;
      screenTheme = shoppingScreen;
      textColor = textColorShopping;
      category = shoppingTitle;
      categoryDesc = shoppingDesc;
    }else if(dailyListCategory == forFunlist){
      srcIcon = forFunIcon;
      screenTheme = ForFunScreen;
      category = forFunTitle;
      categoryDesc = forFunDesc;
      textColor = textColorForFun;
    }
    else srcIcon = null;
    // TODO: implement build
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height*.40,
            decoration: BoxDecoration(
              color: screenTheme,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:40.0,vertical: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // SizedBox(,),
                    Text(
                      category,
                      style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(fontWeight: FontWeight.w700,color: textColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: size.width * 0.40,
                            child: Text(
                              categoryDesc,
                              style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: textColor),
                            ),
                          ),
                          SvgPicture.asset(srcIcon,width: iconSize, height: iconSize,),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    CardCategoryList(dailyListCategory: dailyListCategory)
                  ],
                ),
              ),
            ) 
          ),
        ],
      ),
    );
  }
}