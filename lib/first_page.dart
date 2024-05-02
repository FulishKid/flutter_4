// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_2/home_page.dart';
import 'package:flutter_app_2/profile_page.dart';
import 'package:flutter_app_2/setting_page.dart';

class FirstPage extends StatefulWidget {
  final int selectedIndex;

  FirstPage({super.key, required this.selectedIndex});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // track of the current page
  int? _selectedIndex;
  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  // list of pages
  final List _pages = [HomePage(), ProfilePage(), SettingsPage()];

  // upd selected index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Drawer навигация
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('First Page'),
    //     backgroundColor: Colors.amberAccent,
    //   ),
    //   drawer: Drawer(
    //     backgroundColor: const Color.fromARGB(255, 183, 207, 247),
    //     child: Column(
    //       children: [
    //         DrawerHeader(
    //             child: Icon(
    //           Icons.favorite,
    //           size: 40,
    //         ))
    //         // home page
    //         ,
    //         ListTile(
    //           leading: Icon(
    //             Icons.home,
    //           ),
    //           title: Text('H O M E'),
    //           onTap: () {
    //             Navigator.pop(context);
    //             Navigator.pushNamed(context, '/homepage');
    //           },
    //         ),

    //         // settings page
    //         ListTile(
    //           leading: Icon(
    //             Icons.settings,
    //           ),
    //           title: Text('S E T T I N G S'),
    //           onTap: () {
    //             Navigator.pop(context);

    //             Navigator.pushNamed(context, '/settingspage');
    //           },
    //         ),
    //       ],
    //     ),
    //   ),
    // );

    // bottomNavigationBar навигация
    return Scaffold(
        appBar: AppBar(
          title: Text('First Page'),
          backgroundColor: Colors.amberAccent,
        ),
        body: _pages[_selectedIndex!],
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
          shape: OvalBorder(),
          backgroundColor: Color.fromARGB(255, 79, 185, 218),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,

        // bottomNavigationBar
        // bottomNavigationBar: BottomNavigationBar(
        //   selectedItemColor: Colors.amber[800],
        //   selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        //   currentIndex: _selectedIndex,

        //   onTap: _navigateBottomBar,
        //   items: [
        //     // home

        //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),

        //     // profile

        //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'PROFILE'),

        //     // settings

        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.settings), label: 'SETTINGS'),
        //   ],
        // ),
        bottomNavigationBar: AnimatedBottomNavigationBar(
            icons: [Icons.home, Icons.person, Icons.settings],
            activeIndex: _selectedIndex!,
            gapLocation: GapLocation.none,
            notchSmoothness: NotchSmoothness.defaultEdge,
            leftCornerRadius: 32,
            rightCornerRadius: 32,
            activeColor: Colors.amberAccent,
            onTap: _navigateBottomBar));
  }
}
