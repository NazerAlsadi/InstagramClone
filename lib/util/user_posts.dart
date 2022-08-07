// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
//  const UserPosts({Key? key}) : super(key: key);
  final String name;
  UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // user Post
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(name,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                const Icon(Icons.menu)
              ],
            ),
          ),
          // post img
          Container(
            height: 350,
            color: Colors.grey[300],
          ),
          // Icons
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(Icons.favorite),
                    // ignore: prefer_const_constructors
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: const Icon(Icons.chat_bubble_outline),
                    ),
                    const Icon(Icons.share),
                  ],
                ),
                const Icon(Icons.bookmark),
              ],
            ),
          ),
          // Liked By
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text('Liked by'),
                Text(
                  ' Mohammad ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('and'),
                Text(
                  ' Others',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // caption
          Padding(
            padding: EdgeInsets.only(left: 16.0, top: 8),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                ),
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  TextSpan(
                    text: 'testtt ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'I turn the dirt they throwing into riches til im filthy',
                  ),
                ],
              ),
            ),
          )
          // comments
        ],
      ),
    );
  }
}
