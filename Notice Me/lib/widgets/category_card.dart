import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_akhir/constants/colors.dart';


class CategoryCard extends StatelessWidget{
  final String svgSource;
  final String title;
  final void Function()? press;
  const CategoryCard({
    Key ?key,
    required
    this.svgSource,
    required
    this.title,
    required
    this.press,
  });
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder:(context, constraints) {
        var size = MediaQuery.of(context).size;
        log('Size Context --> ${size.width}');
        log('Size Constraint--> ${constraints.maxWidth}');
        if(size.width <= 600){
          return CardMobile(svgSource: svgSource,title: title,press: press,);
        }else if(size.width <= 1200){
          return CardWeb(svgSource: svgSource,title: title,press: press,sizeIcon: 150.0,); 
        }else{
          return CardWeb(svgSource: svgSource,title: title,press: press,sizeIcon: 200.0,); 
        }
      } 
    );
  }
}

class CardMobile extends StatelessWidget{
  final String svgSource;
  final String title;
  final void Function()? press;
  const CardMobile({
    Key ?key,
    required
    this.svgSource,
    required
    this.title,
    required
    this.press,
  });
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    log('Size --> ${size.width}');
    // TODO: implement build
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0,17),
              blurRadius: 17,
              spreadRadius: -23,
              color: shadowColor,
            )
          ]
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press ,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  SvgPicture.asset(svgSource),
                  Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 24),
                  )
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CardWeb extends StatelessWidget{
  final String svgSource;
  final String title;
  final double sizeIcon;
  final void Function()? press;
  const CardWeb({
    Key ?key,
    required
    this.svgSource,
    required
    this.title,
    required
    this.press,
    required
    this.sizeIcon
  });
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0,17),
              blurRadius: 17,
              spreadRadius: -23,
              color: shadowColor,
            )
          ]
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press ,
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  SvgPicture.asset(svgSource, height: sizeIcon, width: sizeIcon,),
                  Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 24),
                  )
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}