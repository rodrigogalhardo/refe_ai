import 'package:flutter/material.dart';
import 'package:rife_ai/views/shared/ScaffoldScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return PagerViewScaffold();
  }
}
