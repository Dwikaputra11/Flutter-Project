import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_akhir/constants/colors.dart';
import 'package:project_akhir/constants/string.dart';
import 'package:project_akhir/model/daily_list.dart';

class DetailScreen extends StatelessWidget{
  final DailyList activityDetail;
  final String category;
  DetailScreen({required this.activityDetail, required this.category});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder: ((context, constraints) {
          if(constraints.maxWidth <= 900){
            return DetailScreenMobile(activityDetail: activityDetail, category: category);
          }else if(constraints.maxWidth <= 1200){
            return DetailScreenWeb(activityDetail: activityDetail, category: category);
          }else{
            return DetailScreenWeb(activityDetail: activityDetail, category: category);
          }
      })
    );
  }
}

class DetailScreenMobile extends StatelessWidget{
  final DailyList activityDetail;
  final String category;
  DetailScreenMobile({required this.activityDetail, required this.category});

  @override
  Widget build(BuildContext context) {
    var screenTheme;
    var size = MediaQuery.of(context).size;
    if(category == sportTitle){
      screenTheme = sportScreen;
    }else if(category == healthCareTitle) {
      screenTheme = healthCareScreen;
    }else if(category == shoppingTitle){
      screenTheme = shoppingScreen;
    }else if(category == forFunTitle){
      screenTheme = ForFunScreen;
    }
    var color = activityDetail.textColor;
    var textStyle = TextStyle(fontSize: 14,color: color);
    // TODO: implement build
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height*.30,
            decoration: BoxDecoration(
              color: screenTheme,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    activityDetail.name,
                    style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontWeight: FontWeight.w700,color: color),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      SvgPicture.asset('images/time.svg',height: 20,width: 20,color: color,),
                      SizedBox(width: 15,),
                      Text(
                        activityDetail.time,
                        style: textStyle,
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SvgPicture.asset('images/reminder.svg',height: 20,width: 20,color: color,),
                      SizedBox(width: 15,),
                      Text(
                        activityDetail.reminder,
                        style: textStyle,
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SvgPicture.asset('images/category.svg',height: 20,width: 20,color: color,),
                      SizedBox(width: 15,),
                      Text(
                        category,
                        style: textStyle,
                      )
                    ],
                  ),
                 SizedBox(height: 100,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 5,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                      ),
                      Container(
                        height: 150,
                        width: size.width*.80,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFF),
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
            ) 
          ),
        ],
      ),
    );
  }
}

class DetailScreenWeb extends StatelessWidget{
  final DailyList activityDetail;
  final String category;
  DetailScreenWeb({required this.activityDetail, required this.category});

  @override
  Widget build(BuildContext context) {
    var screenTheme;
    var size = MediaQuery.of(context).size;
    if(category == sportTitle){
      screenTheme = sportScreen;
    }else if(category == healthCareTitle) {
      screenTheme = healthCareScreen;
    }else if(category == shoppingTitle){
      screenTheme = shoppingScreen;
    }else if(category == forFunTitle){
      screenTheme = ForFunScreen;
    }
    var color = activityDetail.textColor;
    var textStyle = TextStyle(fontSize: 14,color: color);
    // TODO: implement build
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height*.30,
            decoration: BoxDecoration(
              color: screenTheme,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:40.0,vertical: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    activityDetail.name,
                    style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontWeight: FontWeight.w700,color: color),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      SvgPicture.asset('images/time.svg',height: 20,width: 20,color: color,),
                      SizedBox(width: 15,),
                      Text(
                        activityDetail.time,
                        style: textStyle,
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SvgPicture.asset('images/reminder.svg',height: 20,width: 20,color: color,),
                      SizedBox(width: 15,),
                      Text(
                        activityDetail.reminder,
                        style: textStyle,
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SvgPicture.asset('images/category.svg',height: 20,width: 20,color: color,),
                      SizedBox(width: 15,),
                      Text(
                        category,
                        style: textStyle,
                      )
                    ],
                  ),
                  SizedBox(height: 80,),
                  Row(
                    children: [
                      Container(
                        width: 5,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                      ),
                      Container(
                        height: 80,
                        width: size.width*.90,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFF),
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
            ) 
          ),
        ],
      ),
    );
  }
}
