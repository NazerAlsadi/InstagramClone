import 'package:flutter/material.dart';

class ShopGrid extends StatelessWidget {
  final List<String> userPosts = [];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(2),
        child: Container(
          color: Colors.pink[100],
        ),
      ),
    );
  }
}
