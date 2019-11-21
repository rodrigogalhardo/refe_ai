import 'package:flutter/material.dart';
import 'package:rife_ai/Theme.dart';
import 'package:rife_ai/features/home/data/models/campainModel.dart';

class HomeProductDetails extends StatefulWidget {
  final CampainModel campainModel;

  HomeProductDetails({Key key, @required this.campainModel}) : super(key: key);

  @override
  _HomeProductDetailsState createState() => _HomeProductDetailsState();
}

class _HomeProductDetailsState extends State<HomeProductDetails> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: _getAppBar(),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Hero(
                      key: this.widget.key,
                      tag: widget.campainModel.productName,
                      child: Image.asset(
                        widget.campainModel.image,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                        height: 294,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.campainModel.productype,
                            style: TextStyle(
                              fontFamily: 'HelveticaNeue',
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0.385,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            widget.campainModel.productName,
                            style: TextStyle(
                              fontFamily: 'HelveticaNeue',
                              color: Color(0xff000000),
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                widget.campainModel.price,
                                style: TextStyle(
                                  fontFamily: 'HelveticaNeue',
                                  color: Color(0xff000000),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              Spacer(flex: 12),
                              Icon(Icons.star,
                                  size: 18.0, color: Colors.orangeAccent),
                              SizedBox(width: 5.0),
                              Text(
                                '4.7',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xff707070),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              Spacer(flex: 1),
                              Text(
                                '(337 reviews)',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xff707070),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 30.0, height: 30.0),
                          Row(
                            children: <Widget>[
                              Icon(Icons.timer,
                                  size: 18.0, color: Color(0xff707070)),
                              SizedBox(width: 5.0),
                              Text(
                                'Termina em (${widget.campainModel.offerCountDown})',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xff707070),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _getAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: marine_blue,
    automaticallyImplyLeading: true,
    title: Text(
      "Detalhes",
      style: TextStyle(
        fontFamily: 'HelveticaNeue',
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    actions: <Widget>[
      Icon(Icons.add_shopping_cart, color: Colors.white),
      SizedBox(width: 15.0),
    ],
  );
}
