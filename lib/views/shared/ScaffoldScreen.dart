import 'package:flutter/material.dart';
import 'package:rife_ai/Theme.dart';

class MyScaffold extends StatelessWidget {
  final Widget body;

  MyScaffold({this.body});
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      key: _scaffoldKey,
      body: SafeArea(
        top: false,
        bottom: false,
        child: body,
      ),
      appBar: AppBar(
        backgroundColor: deepBlue,
        elevation: 0,
        automaticallyImplyLeading: true,
        //`true` if you want Flutter to automatically add Back Button when needed,
        //or `false` if you want to force your own back button every where
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
        centerTitle: true,
        title: Container(
          margin: EdgeInsets.only(right: 50.0, left: 0.0),
          child: Center(
            child: Image.asset(
              'assets/images/mills_solaris_logo_white.png',
              height: 45.0,
              width: 45.0,
            ),
          ),
        ),
        actions: <Widget>[],
      ),
    );
  }
}
