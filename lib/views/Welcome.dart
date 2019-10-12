import 'package:flutter/material.dart';
import 'package:rife_ai/Theme.dart';
import 'package:rife_ai/views/Login/Signup.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  gotoLogin() {
    //controller_0To1.forward(from: 0.0);
//    Navigator.of(context).push(
//      PageRouteBuilder(
//        pageBuilder: (_, __, ___) => new LoginScreen(),
//        transitionDuration: Duration(milliseconds: 750),
//
//        /// Set animation with opacity
//        transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
//          return Opacity(
//            opacity: animation.value,
//            child: child,
//          );
//        },
//      ),
//    );
  }

  gotoSignup() {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => new SignupScreen(),
        transitionDuration: Duration(milliseconds: 300),

        /// Set animation with opacity
        transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
          return Opacity(
            opacity: animation.value,
            child: child,
          );
        },
      ),
    );
  }

  gotoCotacaoExterna() {
//    Navigator.of(context).push(
//      PageRouteBuilder(
//        pageBuilder: (_, __, ___) => new CotacaoExternaScreen(),
//        transitionDuration: Duration(milliseconds: 300),
//
//        /// Set animation with opacity
//        transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
//          return Opacity(
//            opacity: animation.value,
//            child: child,
//          );
//        },
//      ),
//    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: _WelcomeScreen(),
    );
  }

  Widget _WelcomeScreen() {
    return new Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: deepBlue,
      ),
      child: new Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10.0, bottom: 0.0),
            child: Image.asset(
              'assets/images/rifeai_logo@2x.png',
              height: 200.33,
              width: 200.33,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 10.0),
            alignment: Alignment.center,
            child: Center(
              child: Image.asset(
                'assets/images/welcome_banner.png',
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 65.0),
            alignment: Alignment.center,
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new FlatButton(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: Colors.white, //Color of the border
                        style: BorderStyle.solid, //Style of the border
                        width: 0.8, //width of the border
                      ),
                    ),
                    color: transparentButton.withOpacity(0.3),
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new SignupScreen(),
                          transitionDuration: Duration(milliseconds: 300),

                          /// Set animation with opacity
                          transitionsBuilder: (_, Animation<double> animation,
                              __, Widget child) {
                            return Opacity(
                              opacity: animation.value,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: new Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                            child: Text(
                              "ENTRAR",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 3.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
