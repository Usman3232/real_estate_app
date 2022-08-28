import 'package:flutter/material.dart';
import 'package:real_estate_app/utils/TextView.dart';
import 'package:real_estate_app/utils/constants.dart';
import 'package:real_estate_app/utils/size_config.dart';
import 'package:real_estate_app/views/pages/discoverscreen/discoverscreen.dart';
import 'package:real_estate_app/views/pages/homescreen/homescreen.dart';
import 'package:real_estate_app/views/pages/messagesscreen/messagesscreen.dart';
import 'package:real_estate_app/views/pages/myhomescreen/myhome.dart';
import 'package:real_estate_app/views/pages/profilescreen/profile.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  final screens = [
    HomePage(),
    Messages(),
    Discover(),
    MyHome(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      extendBodyBehindAppBar: true,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black38,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_post_office_outlined),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_work_outlined),
            label: 'My Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
