import 'package:flutter/material.dart';
import 'package:rife_ai/Theme.dart';

class PageWidgetScreen extends StatefulWidget {
  Color backgroundColor;
  String pageTitle;

  PageWidgetScreen({this.backgroundColor, this.pageTitle});

  @override
  _PageWidgetScreenState createState() => _PageWidgetScreenState();
}

class _PageWidgetScreenState extends State<PageWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: this.widget.backgroundColor ??= transparentButton,
    );
  }
}
