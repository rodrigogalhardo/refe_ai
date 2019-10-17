import 'package:flutter/material.dart';
import 'package:rife_ai/views/shared/ScaffoldScreen.dart';

class ViewHomeScreen extends StatefulWidget {
  @override
  _ViewHomeScreenState createState() => _ViewHomeScreenState();
}

class _ViewHomeScreenState extends State<ViewHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return PagerViewScaffold();
  }
}
