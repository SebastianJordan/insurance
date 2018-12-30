import 'package:flutter/material.dart';

class HeaderBarComponent extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  HeaderBarComponent({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HeaderBar();
  }

  @override
  Size get preferredSize => const Size.fromHeight(48.0);
}

class _HeaderBar extends State<HeaderBarComponent> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
    );
  }
}
