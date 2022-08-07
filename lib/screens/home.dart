// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:instagramclone/util/bubble_stories.dart';
import 'package:instagramclone/util/user_posts.dart';

class HomeUser extends StatelessWidget {
  final List people = ['ggg', 'hhh', 'jjj', 'kkk', 'lll'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // ignore: prefer_const_literals_to_create_immutables
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'Instagram',
            style: TextStyle(color: Colors.black),
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              GestureDetector(
                onTap: () {},
                child: Icon(Icons.add),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.favorite),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(Icons.share),
              )
            ],
          )
        ]),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // Stories
          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: ((context, index) =>
                  BubbleStories(text: people[index])),
            ),
          ),

          // Posts
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: ((context, index) => UserPosts(name: people[index])),
            ),
          )
        ],
      ),
    );
  }
}
