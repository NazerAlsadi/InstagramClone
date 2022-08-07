import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
  const ExploreGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 21,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: ((context, index) => Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              color: Colors.deepPurple[100],
            ),
          )),
    );
  }
}
