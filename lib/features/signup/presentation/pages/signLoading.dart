import 'package:flutter/material.dart';
import 'package:rife_ai/shared/GenericProgressIndicator.dart';

class SignLoading extends StatefulWidget {
  SignLoading({Key key}) : super(key: key);
  @override
  _SignLoadingState createState() => _SignLoadingState();
}

class _SignLoadingState extends State<SignLoading> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GenericProgressIndicator(),
    );
  }
}
