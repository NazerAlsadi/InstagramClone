// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:instagramclone/screens/account.dart';
import 'package:instagramclone/screens/home.dart';
import 'package:instagramclone/screens/reels.dart';
import 'package:instagramclone/screens/search.dart';
import 'package:instagramclone/screens/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    HomeUser(),
    Search(),
    Reels(),
    Shop(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_selectedIndex],
        // ignore: prefer_const_literals_to_create_immutables
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            onTap: _navigateBar,
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Serach',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_call),
                label: 'Reels',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shop),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Account'),
            ]));
  }
}
