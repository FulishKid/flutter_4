// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});

  String pageTitle = 'Settings Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(pageTitle),
      ),
    );
  }
}
