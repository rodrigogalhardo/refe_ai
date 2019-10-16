import 'package:flutter/material.dart';
import 'package:rife_ai/Theme.dart';
import 'package:rife_ai/widgets/PageWidgetScreen.dart';

class DefaultViewScaffold extends StatefulWidget {
  final Widget body;
  final String pageTitle;

  DefaultViewScaffold({this.body, this.pageTitle});

  @override
  _DefaultViewScaffoldState createState() => _DefaultViewScaffoldState();
}

class _DefaultViewScaffoldState extends State<DefaultViewScaffold> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      key: _scaffoldKey,
      body: SafeArea(
        top: false,
        bottom: false,
        child: widget.body,
      ),
      appBar: AppBar(
        backgroundColor: mediumBlue,
        elevation: 0,
        automaticallyImplyLeading: true,
        //`true` if you want Flutter to automatically add Back Button when needed,
        //or `false` if you want to force your own back button every where
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: lightOrange,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        title: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 50.0, left: 0.0),
              child: Center(
                child: Image.asset(
                  'assets/images/rifeai_logo_full_branco@3x.png',
                  height: 45.0,
                  width: 45.0,
                ),
              ),
            ),
            Text(
              widget.pageTitle,
              style: TextStyle(
                fontSize: 24.6,
                color: transparentButton,
              ),
            )
          ],
        ),
        actions: <Widget>[],
      ),
    );
  }
}
