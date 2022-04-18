import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_akhir/constants/colors.dart';
import 'package:project_akhir/constants/string.dart';
import 'package:project_akhir/model/daily_list.dart';
import 'package:project_akhir/screens/category_screen.dart';
import 'package:project_akhir/widgets/category_card.dart';

class MainScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth <= 600){
            return MainScreenMobile();
          }else if(constraints.maxWidth <= 1400){
            return MainScreenWeb(gridCount: 2);
          }else{
            return MainScreenWeb(gridCount: 4);
          }
        },
      ),
    );
  }
}

class MainScreenMobile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: mainScreen,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFBCD7EA),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: SvgPicture.asset(menuButtonIcon),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Good Morning,\nDwika',
                    style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontWeight: FontWeight.w700)
                    // style: TextStyle(
                    //   color: textColor,
                    //   fontWeight: FontWeight.w900,
                    //   fontSize: 24
                    // ),
                  ),
                  SizedBox(height: 50,),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .95,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 30,
                      children: <Widget>[
                        CategoryCard( 
                          svgSource: sportIcon, 
                          title: sportTitle,
                          press: (){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context){
                                return CategoryScreen(dailyListCategory: sportList,);
                            })); 
                          },
                          ),
                          CategoryCard(
                            svgSource: healthCareIcon, 
                            title: healthCareTitle,
                            press: (){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context){
                                  return CategoryScreen(dailyListCategory: healthCareList,);
                              }));
                            },
                          ),
                          CategoryCard(
                            svgSource: shoppingIcon, 
                            title: shoppingTitle,
                            press: (){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context){
                                  return CategoryScreen(dailyListCategory: shoppingList,);
                              }));
                            },
                          ),
                          CategoryCard(
                            svgSource: forFunIcon, 
                            title: forFunTitle,
                            press: (){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context){
                                  return CategoryScreen(dailyListCategory: forFunlist,);
                              }));
                            },
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MainScreenWeb extends StatelessWidget{
  final gridCount;
  MainScreenWeb({ required this.gridCount});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .30,
            decoration: BoxDecoration(
              color: mainScreen,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(20)),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFBCD7EA),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: SvgPicture.asset(menuButtonIcon),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Good Morning,\nDwika',
                    style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontWeight: FontWeight.w700)
                    // style: TextStyle(
                    //   color: textColor,
                    //   fontWeight: FontWeight.w900,
                    //   fontSize: 24
                    // ),
                  ),
                  SizedBox(height: 100,),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: gridCount,
                      childAspectRatio: .95,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 30,
                      children: <Widget>[
                        CategoryCard( 
                          svgSource: sportIcon, 
                          title: sportTitle,
                          press: (){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context){
                                return CategoryScreen(dailyListCategory: sportList,);
                            })); 
                          },
                          ),
                          CategoryCard(
                            svgSource: healthCareIcon, 
                            title: healthCareTitle,
                            press: (){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context){
                                  return CategoryScreen(dailyListCategory: healthCareList,);
                              }));
                            },
                          ),
                          CategoryCard(
                            svgSource: shoppingIcon, 
                            title: shoppingTitle,
                            press: (){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context){
                                  return CategoryScreen(dailyListCategory: shoppingList,);
                              }));
                            },
                          ),
                          CategoryCard(
                            svgSource: forFunIcon, 
                            title: forFunTitle,
                            press: (){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context){
                                  return CategoryScreen(dailyListCategory: forFunlist,);
                              }));
                            },
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}