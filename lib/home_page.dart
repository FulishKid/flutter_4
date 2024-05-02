// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  String pageTitle = 'Home Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(pageTitle),
      ),
    );
  }
}
