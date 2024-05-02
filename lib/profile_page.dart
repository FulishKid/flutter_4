// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_2/first_page.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  String pageTitle = 'Profile Page';
  bool _isHeroWidgetActive = false;
  bool get isHeroWidgetActive => _isHeroWidgetActive;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              maintainState: true,
              builder: (context) {
                _isHeroWidgetActive = !_isHeroWidgetActive;
                return ProfileHeroPage();
              })),
          child: Hero(
            tag: 'img1',
            child: Image.network(
                width: 200,
                'https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-Image.png'),
          ),
        ),
      ),
    );
  }
}

class ProfileHeroPage extends StatelessWidget {
  const ProfileHeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            maintainState: true,
            builder: (context) {
              return FirstPage(
                selectedIndex: 1,
              );
            },
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'img1',
                child: Image.network(
                    'https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-Image.png'),
              ),
              Text('User info')
            ],
          ),
        ),
      ),
    );
  }
}
