// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagramclone/util/explore_grid.dart';
import 'package:instagramclone/util/shop_grid.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                'Shop',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(Icons.calendar_today),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.menu)
                ],
              ),
            ],
          ),
        ),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: Column(children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Container(
              padding: EdgeInsets.all(4),
              color: Colors.grey[300],
              child: Row(children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[500],
                ),
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey[500], fontSize: 12),
                )
              ]),
            ),
          ),
        ),
        Expanded(child: ShopGrid())
      ]),
    );
  }
}
