import 'package:flutter/material.dart';

class HomeLoading extends StatefulWidget {
  HomeLoading({Key key}) : super(key: key);

  @override
  State createState() => _HomeLoadingState();
}

class _HomeLoadingState extends State<HomeLoading> {
  @override
  Widget build(BuildContext context) {
    return Center(
       child: CircularProgressIndicator(),
    );
  }
}