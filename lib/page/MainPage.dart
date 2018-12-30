import 'package:flutter/material.dart';
import '../component/FooterBarComponent.dart';
import '../component/HeaderBarComponent.dart';
import './HomePage.dart';
import './PaymentPage.dart';
import './AccountPage.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget page = HomePage();
  String _title= 'Dashboard';
  void _handleTapboxChanged(int index) {
    print('nuevo valor ');
    setState(() {
      switch (index) {
        case 0:
          page = HomePage();
           _title= 'Dashboard';
          break;
        case 1:
          page = PaymentPage();
           _title= 'Payment';
          break;
        case 2:
          page = AccountPage();
           _title= 'Account';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HeaderBarComponent(
          title: _title,
        ),
        body: page,
        bottomNavigationBar: FooterBarComponent(
          index: 0,
          onChanged: _handleTapboxChanged,
        ));
  }
}
