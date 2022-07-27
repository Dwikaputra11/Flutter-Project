import 'dart:developer' show log;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import 'package:project_akhir/constants/string.dart';
import 'package:project_akhir/models/activity.dart';

class CheckButton extends StatefulWidget {
  final Color color;
  const CheckButton({
    Key? key,
    required this.color,
  }) : super(key: key);
  @override
  _CheckButtonState createState() => _CheckButtonState();
  
}

class _CheckButtonState extends State<CheckButton>{
  @override
  Widget build(BuildContext context) {
    return Consumer<Activity>(
      builder: (ctx, activity, child) => IconButton(
        onPressed: () {
          setState(() {
            activity.toggleFinishStatus();
            log('isCheck --> ${activity.isFinish}');
          }); 
        }, 
        icon: SvgPicture.asset(
          activity.isFinish ? checkBold : uncheck,
          color: widget.color,
        )
      ),
    );
  }
}