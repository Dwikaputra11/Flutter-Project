import 'package:flutter/material.dart';

class Collection extends StatefulWidget {
  Collection({Key? key}) : super(key: key);

  @override
  State<Collection> createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Collection',
        ),
      ),
    );
  }
}