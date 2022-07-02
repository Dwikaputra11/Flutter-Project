import 'package:flutter/material.dart';

class DescriptionDetail extends StatelessWidget {
  final int currentDescription;
  DescriptionDetail({
    Key? key,
    required this.currentDescription,
  }) : super(key: key);

  final List<String> descriptions = [
    'Job Description',
    'Company',
    'Reviews',
    'Work Time',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(descriptions[currentDescription]),
      ),
    );
  }
}
