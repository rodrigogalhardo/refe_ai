import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rife_ai/Theme.dart';
import 'package:rife_ai/features/home/presentation/bloc/bloc.dart';
import 'package:rife_ai/features/home/presentation/widgets/homeModule.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _textFieldSearchController = TextEditingController();
  var _currentIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SafeArea(
        top: false,
        child: Scaffold(
          appBar: _getAppBar(),
          body: _getBody(),
          bottomNavigationBar: _getBottomNavigationBar(),
        ),
      ),
    );
  }

  Widget _getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: marine_blue,
      title: new Container(
        margin: EdgeInsets.symmetric(horizontal: 2.0),
        width: 260,
        height: 29.0,
        child: TextField(
          controller: _textFieldSearchController,
          style: TextStyle(color: Color(0XFF707070), fontSize: 13.0),
          cursorColor: Color(0XFF707070),
          decoration: InputDecoration(
            hintText: "O que você procura?",
            filled: true,
            fillColor: Colors.white,
            prefixIcon:
                Icon(Icons.search, color: Color(0XFF707070), size: 22.0),
            contentPadding: EdgeInsets.symmetric(vertical: 0),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide(color: Colors.white, width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide(color: Colors.white, width: 1.0),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide(
                color: Colors.white,
                width: 1.0,
              ),
            ),
          ),
        ),
      ),
      actions: <Widget>[
        Icon(Icons.add_shopping_cart, color: Colors.white),
        SizedBox(width: 15.0),
        Icon(Icons.account_circle, color: Colors.white),
        SizedBox(width: 15.0),
      ],
      automaticallyImplyLeading: false,
    );
  }

  Widget _getBody() {
    return BlocProvider(
      builder: (context) => HomeBloc()..add(HomeLoad(param1: 0)),
      child: HomeModule(),
    );
  }

  Widget _getBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: marine_blue,
      onTap: onTabTapped, // new
      currentIndex: _currentIndex, // new
      items: [
        new BottomNavigationBarItem(
          icon: const Icon(
            Icons.home,
            color: light_sky_blue,
          ),
          title: Text(
            'Inicio',
            style: TextStyle(
              fontFamily: 'HelveticaNeue',
              color: Color(0xffffffff),
              fontSize: 10,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        new BottomNavigationBarItem(
          icon: const Icon(
            Icons.collections_bookmark,
            color: light_sky_blue,
          ),
          title: Text(
            'Meus Anúncios',
            style: TextStyle(
              fontFamily: 'HelveticaNeue',
              color: Color(0xffffffff),
              fontSize: 10,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        new BottomNavigationBarItem(
          icon: const Icon(
            Icons.local_activity,
            color: light_sky_blue,
          ),
          title: Text(
            'Rifar',
            style: TextStyle(
              fontFamily: 'HelveticaNeue',
              color: Color(0xffffffff),
              fontSize: 10,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        new BottomNavigationBarItem(
          icon: const Icon(
            Icons.shopping_basket,
            color: light_sky_blue,
          ),
          title: Text(
            'Compras',
            style: TextStyle(
              fontFamily: 'HelveticaNeue',
              color: Color(0xffffffff),
              fontSize: 10,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        new BottomNavigationBarItem(
          icon: const Icon(
            Icons.live_help,
            color: light_sky_blue,
          ),
          title: Text(
            'Ajuda',
            style: TextStyle(
              fontFamily: 'HelveticaNeue',
              color: Color(0xffffffff),
              fontSize: 10,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ],
    );
  }
}
