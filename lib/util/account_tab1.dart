// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AccountTab1 extends StatelessWidget {
  final List<String> userPosts = [];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.all(2.0),
        child: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
