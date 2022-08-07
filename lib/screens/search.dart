// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:instagramclone/util/explore_grid.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              padding: EdgeInsets.all(8),
              color: Colors.grey[300],
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey[500],
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        'Search',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: ExploreGrid());
  }
}
