// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagramclone/util/account_tab1.dart';
import 'package:instagramclone/util/account_tab2.dart';
import 'package:instagramclone/util/account_tab3.dart';
import 'package:instagramclone/util/account_tab4.dart';
import 'package:instagramclone/util/bubble_stories.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // profile pics
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle),
                  ),

                  // num of posts , follower
                  // ignore: prefer_const_literals_to_create_immutables
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              '237',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text('Posts'),
                          ],
                        ),
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              '3900',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text('Followers'),
                          ],
                        ),
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              '100',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text('Following'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Name and bio

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'data',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Lorem ipsum'),
                  Text(
                    'm.youtube.com/test',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Text('Edit pofile'),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Text('Ad Tools'),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Text('Insights'),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  BubbleStories(text: 'Story 1'),
                  BubbleStories(text: 'Story 2'),
                  BubbleStories(text: 'Story 3'),
                  BubbleStories(text: 'Story 4'),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBar(
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  Tab(
                    icon: Icon(Icons.grid_3x3_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.video_call),
                    // child: AccountTab2(),
                  ),
                  Tab(
                    icon: Icon(Icons.shop),
                    //  child: AccountTab3(),
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                    // child: AccountTab4(),
                  ),
                ],
              ),
            ),

            Expanded(
              child: TabBarView(
                children: [
                  AccountTab1(),
                  AccountTab2(),
                  AccountTab3(),
                  AccountTab4(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
