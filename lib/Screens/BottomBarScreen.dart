import 'package:tour/Screens/dashboard.dart';
import 'package:tour/favourite_screen.dart';
import 'package:tour/profile.dart';

import 'package:tour/Screens/search_screen.dart';
import 'package:flutter/material.dart';

class BottomBarScreen extends StatefulWidget {
  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List _pages = [
    //---Pages for the Bottom Bar Screen Icons/Text/Divisions---///
    DashboardPage(),
    SearchScreen(),
    FavouriteScreen(),
    Profile(),
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: Container(
        height: 49,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black.withOpacity(0.8),
          unselectedItemColor: Colors.grey,
          onTap: _selectPage,
          currentIndex: _selectedPageIndex,
          items: <BottomNavigationBarItem>[
            //^^^Items like icon or text for the corresponding Bottom Bar Pages--//
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 28,
              ),
              title:
                  Container(), //<<<--Could also write null in the place of conatainer--<<
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 28,
              ),
              title: Container(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              title: Container(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 28,
              ),
              title: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
