import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rife_ai/Theme.dart';
import 'package:rife_ai/features/home/data/models/campainModel.dart';
import 'package:rife_ai/features/product/presentation/pages/numbers_details/product_numbers_details.dart';
import 'package:rife_ai/shared/FadeRoute.dart';

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
          resizeToAvoidBottomPadding: true,
          appBar: _getAppBar(),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
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
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 15),
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
                          SizedBox(width: 30.0, height: 15.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Números',
                                style: TextStyle(
                                  fontFamily: 'HelveticaNeue',
                                  color: Color(0xff000000),
                                  fontSize: 12.59999942779541,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              Text(
                                '${widget.campainModel.stock}',
                                style: TextStyle(
                                  fontFamily: 'HelveticaNeue',
                                  color: Color(0xff212224),
                                  fontSize: 12.59999942779541,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Valor Único',
                                style: TextStyle(
                                  fontFamily: 'HelveticaNeue',
                                  color: Color(0xff000000),
                                  fontSize: 12.59999942779541,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              Text(
                                'R\$ 35,00',
                                style: TextStyle(
                                  fontFamily: 'HelveticaNeue',
                                  color: Color(0xff212224),
                                  fontSize: 12.59999942779541,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Valor Total',
                                style: TextStyle(
                                  fontFamily: 'HelveticaNeue',
                                  color: Color(0xff000000),
                                  fontSize: 12.59999942779541,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              Text(
                                '${widget.campainModel.price}',
                                style: TextStyle(
                                  fontFamily: 'HelveticaNeue',
                                  color: Color(0xff212224),
                                  fontSize: 12.59999942779541,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15.0),
                          //line
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 360,
                              height: 2,
                              decoration: new BoxDecoration(
                                color: Color(0xfff4f4f4),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(Icons.confirmation_number,
                                    size: 20.0, color: Colors.grey),
                                SizedBox(width: 5.0),
                                Text(
                                  "4/ 100 Vendidos",
                                  style: TextStyle(
                                    fontFamily: 'HelveticaNeue',
                                    color: Color(0xff606162),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                Spacer(flex: 3),
                                Icon(Icons.timer,
                                    size: 18.0, color: Colors.orangeAccent),
                                SizedBox(width: 5.0),
                                Text("Encerra em (2h)",
                                    style: TextStyle(
                                      fontFamily: 'HelveticaNeue',
                                      color: Color(0xfffea301),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                    ))
                              ],
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              width: 360,
                              height: 2,
                              decoration: new BoxDecoration(
                                color: Color(0xfff4f4f4),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () => Navigator.push(
                                      context,
                                      FadeRoute(
                                          page: ProductNumbersDetails(
                                              key: this.widget.key,
                                              campainModel:
                                                  widget.campainModel))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Números que concorrerão ao sorteio:",
                                        style: TextStyle(
                                          fontFamily: 'HelveticaNeue',
                                          color: Color(0xff212224),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                      SizedBox(height: 8.0),
                                      Text(
                                        "0016, 4564, 0764, 0778, 3883…",
                                        style: TextStyle(
                                          fontFamily: 'HelveticaNeue',
                                          color: Color(0xff000000),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(height: 12.0),
                                    Icon(Icons.chevron_right,
                                        size: 24.0, color: Colors.grey[700]),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Descrição do item:",
                                      style: TextStyle(
                                        fontFamily: 'HelveticaNeue',
                                        color: Color(0xff000000),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    SizedBox(height: 8.0),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      child: Text(
                                        "Intel Core i7-8550U Quad-Core 1.8 GHz, Maximum Boost Speed 4.0 GHz, RAM 16 GB, NVIDIA GeForce MX150 with 2 GB, Tela 13.9”, Resolução 3000 x 2000, Armazenamento SSD 512 GB, Ports 1 x USB Type-A (USB 3.1 Gen 1), USB Type-C Ports 1 x Thunderbolt 3 (Supports DisplayPort), 1 x USB 3.1 Gen 2, Audio 1 x 1/8",
                                        style: TextStyle(
                                          fontFamily: 'HelveticaNeue',
                                          color: Color(0xff000000),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                        maxLines: 2,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(height: 12.0),
                                    Icon(Icons.chevron_right,
                                        size: 24.0, color: Colors.grey[700]),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
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
