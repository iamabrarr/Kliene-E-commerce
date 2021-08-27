import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:kliene/Views/Screens/HomeScreen/HomeScreen.dart';
import 'package:kliene/Views/Screens/MyCartScreen/MyCartScreen.dart';
import 'package:kliene/Views/Screens/MyProfileScreen/MyProfileScreen.dart';
import 'package:kliene/Views/Screens/SearchScreen/SearchScreen.dart';
import 'package:kliene/Views/constants.dart';

class BottomNaveBar extends StatefulWidget {
  const BottomNaveBar({Key? key}) : super(key: key);

  @override
  _BottomNaveBarState createState() => _BottomNaveBarState();
}

class _BottomNaveBarState extends State<BottomNaveBar> {
  int _currentIndex = 0;
  List classes = [
    HomeScreen(),
    SearchScreen(),
    MyCartScreen(),
    MyProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: classes[_currentIndex],
        bottomNavigationBar: BottomNavyBar(
          backgroundColor: Colors.transparent,
          showElevation: false,
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
                activeColor: primaryColor,
                inactiveColor: Colors.grey),
            BottomNavyBarItem(
                icon: Icon(Icons.search),
                title: Text("Search"),
                activeColor: primaryColor,
                inactiveColor: Colors.grey),
            BottomNavyBarItem(
                icon: Icon(Icons.shopping_bag_rounded),
                title: Text("Cart"),
                activeColor: primaryColor,
                inactiveColor: Colors.grey),
            BottomNavyBarItem(
                icon: Icon(Icons.person),
                title: Text("Profile"),
                activeColor: primaryColor,
                inactiveColor: Colors.grey),
          ],
        ));
  }
}
