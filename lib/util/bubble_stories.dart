// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String text;
  BubbleStories({required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[400],
            ),
          ),
        ),
        Text(text),
      ],
    );
  }
}
