import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rife_ai/Theme.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscuredText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: new Container(
        child: Form(
          key: _formKey,
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: mediumBlue,
            ),
            child: new SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: new ConstrainedBox(
                constraints: new BoxConstraints(),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding:
                          EdgeInsets.only(top: 35.0, bottom: 0.0, right: 300.0),
                      child: Image.asset(
                        'assets/images/rifeai_logo@2x.png',
                        height: 54.69,
                        width: 52.31,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 10.0),
                      alignment: Alignment.center,
                      child: Center(
                        child: Image.asset(
                          'assets/images/welcome_banner.png',
                          width: MediaQuery.of(context).size.width - 10,
                        ),
                      ),
                    ),
                    //Form
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(
                          left: 30.0, right: 30.0, top: 25.0),
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TextFormField(
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            style: TextStyle(
                              color: transparentButton,
                            ),
                            decoration: InputDecoration(
                              counterText: "",
                              hintStyle: TextStyle(
                                color: transparentButton,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color:
                                      transparentButton, //Color of the border
                                  style:
                                      BorderStyle.solid, //Style of the border
                                  width: 0.8, //width of the border
                                ),
                              ),
                              filled: true,
                              labelText: "Email",
                              labelStyle: TextStyle(
                                color: transparentButton,
                              ),
                              fillColor: transparentButton.withOpacity(0.1),
                              hoverColor: transparentButton,
                              focusColor: transparentButton,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color:
                                      transparentButton, //Color of the border
                                  style:
                                      BorderStyle.solid, //Style of the border
                                  width: 0.8, //width of the border
                                ),
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 18.0,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            obscureText: _obscuredText,
                            maxLength: 8,
                            style: TextStyle(
                              color: transparentButton,
                            ),
                            decoration: InputDecoration(
                              counterText: "",
                              hintStyle: TextStyle(
                                color: transparentButton,
                              ),
                              suffixIcon: new GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscuredText = !_obscuredText;
                                  });
                                },
                                child: new Icon(_obscuredText
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color:
                                      transparentButton, //Color of the border
                                  style:
                                      BorderStyle.solid, //Style of the border
                                  width: 0.8, //width of the border
                                ),
                              ),
                              filled: true,
                              labelText: "Senha",
                              labelStyle: TextStyle(
                                color: transparentButton,
                              ),
                              fillColor: transparentButton.withOpacity(0.1),
                              hoverColor: transparentButton,
                              focusColor: transparentButton,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color:
                                      transparentButton, //Color of the border
                                  style:
                                      BorderStyle.solid, //Style of the border
                                  width: 0.8, //width of the border
                                ),
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(
                          left: 30.0, right: 30.0, top: 25.0),
                      alignment: Alignment.center,
                      child: new Row(
                        children: <Widget>[
                          new Expanded(
                            child: new FlatButton(
                              onPressed: () {
                                // Validate will return true if the form is valid, or false if
                                // the form is invalid.
                                if (_formKey.currentState.validate()) {
                                  // Process data.
                                }
                              },
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                                side: BorderSide(
                                  color: Colors.white, //Color of the border
                                  style:
                                      BorderStyle.solid, //Style of the border
                                  width: 0.8, //width of the border
                                ),
                              ),
                              color: transparentButton.withOpacity(0.3),
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
                                        "SE INSCREVER",
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
                          //Form
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
