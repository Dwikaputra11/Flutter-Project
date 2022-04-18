import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_akhir/constants/string.dart';

class CheckButton extends StatefulWidget{
  final color;
  CheckButton({required this.color});
  @override
  _CheckButtonState createState() => _CheckButtonState(iconColor: color);
  
}

class _CheckButtonState extends State<CheckButton>{
  bool isCheck = false;
  final iconColor;

  _CheckButtonState({required this.iconColor});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IconButton(
      onPressed: () {
        setState(() {
          isCheck = !isCheck;
          log('isCheck --> $isCheck');
        });
      }, 
      icon: SvgPicture.asset(
        isCheck ? checkBold : uncheck,
        color: iconColor,
      )
    );
  }
}