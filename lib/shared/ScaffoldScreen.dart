//import 'package:flutter/material.dart';
//import 'package:rife_ai/Theme.dart';
//import 'package:rife_ai/shared/PageWidgetScreen.dart';
//
///**
// * Widget responsável por ser master page e navegação por botton bar.
// */
//class PagerViewScaffold extends StatefulWidget {
//  PagerViewScaffold();
//
//  @override
//  _PagerViewScaffoldState createState() => _PagerViewScaffoldState();
//}
//
//class _PagerViewScaffoldState extends State<PagerViewScaffold> {
//  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
//
//  PageController pageController = PageController();
//  double _currentIndex = 0;
//
//  final List<Widget> _pages = [
//    // PageWidgetScreen(
//    //   backgroundColor: transparentButton,
//    //   pageTitle: "Ajuda",
//    //   body: HomeScreen(),
//    // ),
//    PageWidgetScreen(backgroundColor: Colors.yellow, pageTitle: "Comprar"),
//    PageWidgetScreen(backgroundColor: Colors.green, pageTitle: "Meus Anuncios"),
//    PageWidgetScreen(backgroundColor: Colors.brown, pageTitle: "Filtrar"),
//    PageWidgetScreen(backgroundColor: Colors.brown, pageTitle: "Sacola"),
//  ];
//
//  void onTabTapped(int index) {
//    setState(() {
//      pageController.addListener(() {
//        _currentIndex = index.toDouble();
//      });
//      _currentIndex = index.toDouble();
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      resizeToAvoidBottomInset: true,
//      key: _scaffoldKey,
//      body: SafeArea(
//        top: false,
//        bottom: false,
//        child: PageView.builder(
//          controller: pageController,
//          itemCount: _pages.length,
//          itemBuilder: (context, position) {
//            return _pages[_currentIndex.toInt()];
//          },
//        ),
//      ),
//      appBar: AppBar(
//        backgroundColor: mediumBlue,
//        elevation: 0,
//        automaticallyImplyLeading: true,
//        //`true` if you want Flutter to automatically add Back Button when needed,
//        //or `false` if you want to force your own back button every where
//        leading: IconButton(
//          icon: Icon(
//            Icons.arrow_back_ios,
//            color: lightOrange,
//          ),
//          onPressed: () {
//            Navigator.of(context).pop();
//          },
//        ),
//        centerTitle: true,
//        title: Container(
//          margin: EdgeInsets.only(right: 0.0, left: 0.0),
//          child: Center(
//            child: Image.asset(
//              'assets/images/rifeai_logo_full_branco@3x.png',
//              height: 45.0,
//              width: 45.0,
//            ),
//          ),
//        ),
//        actions: <Widget>[
//          Container(
//            padding: EdgeInsets.only(right: 0.0),
//            child: CircleAvatar(
//              backgroundColor: Colors.transparent,
//              radius: 30.0,
//              child: ClipOval(
//                child: Image.network(
//                  'https://picsum.photos/seed/picsum/150/150',
//                  width: 32,
//                  height: 32,
//                  fit: BoxFit.cover,
//                ),
//              ),
//            ),
//          ),
//        ],
//      ),
//      bottomNavigationBar: new Theme(
//        data: Theme.of(context).copyWith(
//          canvasColor: greyBar,
//          primaryColor: greyBar,
//          textTheme: Theme.of(context).textTheme.copyWith(
//                caption: new TextStyle(
//                  fontSize: 10.0,
//                ),
//              ),
//        ),
//        child: BottomNavigationBar(
//          onTap: onTabTapped,
//          iconSize: 22.0,
//          unselectedItemColor: Colors.white,
//          selectedItemColor: lightOrange,
//          backgroundColor: greyBar,
//          type: BottomNavigationBarType.fixed,
//          currentIndex: _currentIndex
//              .toInt(), // this will be set when a new tab is tapped
//          items: [
//            BottomNavigationBarItem(
//              icon: new Icon(Icons.help),
//              title: new Text(
//                'Ajuda',
//                style: TextStyle(fontSize: 10.0),
//              ),
//            ),
//            BottomNavigationBarItem(
//              icon: new Icon(Icons.monetization_on),
//              title: new Text(
//                'Comprar',
//                style: TextStyle(fontSize: 10.0),
//              ),
//            ),
//            BottomNavigationBarItem(
//              icon: Icon(Icons.collections_bookmark),
//              title: Text(
//                'Meus anúncios',
//                style: TextStyle(fontSize: 10.0),
//              ),
//            ),
//            BottomNavigationBarItem(
//              icon: Icon(Icons.find_replace),
//              title: Text(
//                'Filtrar',
//                style: TextStyle(fontSize: 10.0),
//              ),
//            ),
//            BottomNavigationBarItem(
//              icon: Icon(Icons.add_shopping_cart),
//              title: Text(
//                'Sacola',
//                style: TextStyle(fontSize: 10.0),
//              ),
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}
