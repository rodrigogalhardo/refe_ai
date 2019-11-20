import 'package:flutter/material.dart';
import 'package:rife_ai/Theme.dart';
import 'package:rife_ai/features/home/presentation/widgets/homePage.dart';
import 'package:rife_ai/features/signup/presentation/pages/sign.dart';
import 'package:rife_ai/shared/FadeRoute.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  Size _screen;
  bool _obscureText = true;
  String _password = "";

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _screen = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(0),
        child: Container(
          decoration: gradientBoxDecorationBg,
          height: _screen.height,
          child: Center(
            child: Column(
              children: <Widget>[
                Expanded(flex: 7, child: _buildHeader()),
                Expanded(flex: 10, child: _buildForm()),
                Expanded(flex: 1, child: Container(color: Colors.transparent)),
                Expanded(flex: 3, child: _buildEnterAccountButton()),
                Expanded(flex: 1, child: Container(color: Colors.transparent)),
                Expanded(flex: 3, child: _buildCreateAccountButton()),
                Expanded(flex: 1, child: Container(color: Colors.transparent)),
                Expanded(flex: 3, child: _buildEntireText()),
                Expanded(flex: 2, child: _buildSocialLogins()),
                Expanded(flex: 3, child: _buildForgotPassword()),
                Expanded(flex: 2, child: Container(color: Colors.transparent)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.fromLTRB(_screen.width / 15, 0, 0, 0),
      alignment: Alignment.bottomLeft,
      child: new Text(
        "Bem-vindo(a)",
        style: TextStyle(
          fontFamily: 'HelveticaNeue',
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w500,
          //fontStyle: FontStyle.normal,
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: _screen.width / 15),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextFormField(
              onChanged: (value) {},
              style: TextStyle(color: light_sky_blue),
              decoration: inputDecoration(labelText: "E-mail"),
            ),
            TextFormField(
              onChanged: (value) {},
              style: TextStyle(color: light_sky_blue),
              obscureText: _obscureText,
              enableInteractiveSelection: true,
              decoration: inputDecoration(
                labelText: "Senha",
                obscured: true,
                widget: GestureDetector(
                  onTap: _toggle,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: _obscureText == true
                        ? Icon(Icons.visibility, color: Colors.white)
                        : Icon(Icons.visibility_off, color: Colors.white),
                  ),
                ),
              ),
              validator: (val) => val.length < 6 ? 'Password too short.' : null,
              onSaved: (val) => _password = val,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEnterAccountButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: _screen.width / 15),
      width: _screen.width,
      child: FlatButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50))),
        onPressed: () {
          Navigator.push(context, FadeRoute(page: HomePage()));
        },
        child: new Text(
          "Entrar",
          style: TextStyle(
            fontFamily: 'HelveticaNeue',
            color: marine_blue,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildCreateAccountButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: _screen.width / 15),
      width: _screen.width,
      child: OutlineButton(
        color: Colors.white,
        focusColor: Colors.white,
        borderSide: BorderSide(color: Colors.white, style: BorderStyle.solid),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50))),
        onPressed: () {
          Navigator.push(context, FadeRoute(page: Sign()));
        },
        child: new Text(
          "Criar Conta",
          style: TextStyle(
            fontFamily: 'HelveticaNeue',
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildEntireText() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "ou entrar com ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialLogins() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.push(context, FadeRoute(page: Login()));
            },
            child: Image.asset(
              'assets/images/google_login_btn.png',
              color: Colors.white,
              width: 36.0,
              fit: BoxFit.cover,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context, FadeRoute(page: Login()));
            },
            child: Image.asset(
              'assets/images/facebook_login_btn.png',
              color: Colors.white,
              width: 36.0,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForgotPassword() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Já tem uma conta? ", style: TextStyle(color: Colors.white)),
          Container(
            width: _screen.width / 8,
            child: FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                Navigator.push(context, FadeRoute(page: Login()));
              },
              child: Text(
                "Entre",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
              ),
            ),
          )
        ],
      ),
    );
  }
}
