import 'package:flutter/material.dart';
import 'package:rife_ai/shared/GenericProgressIndicator.dart';

class SignInitial extends StatefulWidget {
  SignInitial({Key key}) : super(key: key);

  @override
  _SignInitialState createState() => _SignInitialState();
}

class _SignInitialState extends State<SignInitial> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GenericProgressIndicator(),
    );
  }
}
