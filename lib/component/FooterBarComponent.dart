import 'package:flutter/material.dart';

class FooterBarComponent extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChanged;
  FooterBarComponent({Key key, this.index,@required this.onChanged}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _FooterBar();
  }
}

class _FooterBar extends State<FooterBarComponent> {
  int _currentIndex = 0;
  _selectTap(int index) {
    print(index);
    widget.onChanged(index);
    setState(() {
      _currentIndex = index;
    });
  }
  @override
    void initState() {
      
      super.initState();
      this._currentIndex=widget.index;
    }
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _selectTap,
      items: [
        BottomNavigationBarItem(
          title: new Text('Dashboard'),
          icon: new Icon(Icons.home),
        ),
        BottomNavigationBarItem(
            title: new Text('Payment'),
            icon: new Icon(Icons.account_balance_wallet)),
        BottomNavigationBarItem(
            title: new Text('Account'), icon: new Icon(Icons.account_circle))
      ],
    );
  }
}
