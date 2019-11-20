import 'package:flutter/material.dart';

class HomeInitial extends StatefulWidget {
  HomeInitial({Key key}) : super(key: key);

  @override
  State createState() => _HomeInitialState();
}

class _HomeInitialState extends State<HomeInitial> {
  @override
  Widget build(BuildContext context) {
    return Center(
       child: CircularProgressIndicator(),
    );
  }
}