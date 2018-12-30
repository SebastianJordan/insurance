import 'package:flutter/material.dart';
import 'page/MainPage.dart';
void main() => runApp(InsuranceApp());

class InsuranceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MainPage(),
    );
  }
}