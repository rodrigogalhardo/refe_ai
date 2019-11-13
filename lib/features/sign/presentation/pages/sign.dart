import 'package:flutter/material.dart';
import 'package:rife_ai/Theme.dart';
import 'package:rife_ai/shared/circular_check_box.widget.dart';

class Sign extends StatefulWidget {
  bool canLogin;

  Sign({Key key, @required this.canLogin}) : super(key: key);

  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      resizeToAvoidBottomInset: true,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: gradientBoxDecorationBg,
        child: new Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(top: 129, left: 36.0),
                  alignment: Alignment.topLeft,
                  child: new Text(
                    "Criar uma conta",
                    style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      color: Color(0xffffffff),
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              // Nome
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(left: 36.0),
                      width: 286,
                      child: Text(
                        "Nome",
                        style: TextStyle(
                          fontFamily: 'HelveticaNeue',
                          color: Color(0xffffffff),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: 36.0),
                      width: 286,
                      alignment: Alignment.center,
                      child: new TextField(
                        style: TextStyle(
                          fontFamily: 'HelveticaNeue',
                          color: Color(0xffffffff),
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: 36.0),
                      width: 286,
                      alignment: Alignment.center,
                      height: 0,
                      decoration: new BoxDecoration(
                        border: Border.all(color: Color(0xffdbe2e9), width: 1),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 20.0,
              ),
              //Email
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(left: 36.0),
                      width: 286,
                      child: Text(
                        "E-mail",
                        style: TextStyle(
                          fontFamily: 'HelveticaNeue',
                          color: Color(0xffffffff),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: 36.0),
                      width: 286,
                      alignment: Alignment.center,
                      child: new TextField(
                        style: TextStyle(
                          fontFamily: 'HelveticaNeue',
                          color: Color(0xffffffff),
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: 36.0),
                      width: 286,
                      alignment: Alignment.center,
                      height: 0,
                      decoration: new BoxDecoration(
                        border: Border.all(color: Color(0xffdbe2e9), width: 1),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 20.0,
              ),
              //Senha
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(left: 36.0),
                      width: 286,
                      child: Text(
                        "Senha",
                        style: TextStyle(
                          fontFamily: 'HelveticaNeue',
                          color: Color(0xffffffff),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: 36.0),
                      width: 286,
                      alignment: Alignment.center,
                      child: new TextField(
                        style: TextStyle(
                          fontFamily: 'HelveticaNeue',
                          color: Color(0xffffffff),
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: 36.0),
                      width: 286,
                      alignment: Alignment.center,
                      height: 0,
                      decoration: new BoxDecoration(
                        border: Border.all(color: Color(0xffdbe2e9), width: 1),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(left: 35.0),
                      width: 28,
                      height: 28,
                      decoration: new BoxDecoration(
                        border: Border.all(
                          color: Color(0xffffffff),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: new CircularCheckBox(
                        activeColor: orange_yellow,
                        value: widget.canLogin,
                        onChanged: (bool checked) {
                          setState(() {
                            widget.canLogin = checked;
                          });
                        },
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        "Aceito os termos e Condições.",
                        style: TextStyle(
                          fontFamily: 'HelveticaNeue',
                          color: Color(0xffffffff),
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 22.0,
              ),
              Container(
                child: FlatButton(
                  onPressed: () {},
                  child: new Text(
                    "Criar Conta",
                    style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      color: marine_blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                margin: EdgeInsets.only(left: 36.0),
                width: 286.0,
                height: 51,
                decoration: new BoxDecoration(
                  color: Color(0xffffffff),
                  border: Border.all(color: Color(0xffffffff), width: 1),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              Container(
                height: 20.0,
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: new TextSpan(
                        children: [
                          new TextSpan(
                              text: "Já tem uma conta? ",
                              style: TextStyle(
                                fontFamily: 'HelveticaNeue',
                                color: Color(0xffffffff),
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                              )),
                          new TextSpan(
                              text: "Entre ",
                              style: TextStyle(
                                fontFamily: 'HelveticaNeue',
                                color: Color(0xffffffff),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                              )),
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
