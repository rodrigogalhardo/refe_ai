import 'package:flutter/material.dart';

class PageWidgetScreen extends StatefulWidget {
  Color backgroundColor;
  String pageTitle;
  final Widget body;

  PageWidgetScreen({this.backgroundColor, this.pageTitle, this.body});

  @override
  _PageWidgetScreenState createState() => _PageWidgetScreenState();
}

class _PageWidgetScreenState extends State<PageWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: this.widget.backgroundColor,
      width: MediaQuery.of(context).size.width,
      child: this.widget.body,
    );
  }
}
