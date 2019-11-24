import 'package:flutter/material.dart';
import 'package:rife_ai/Theme.dart';
import 'package:rife_ai/features/home/data/models/campainModel.dart';
import 'package:rife_ai/features/home/data/models/filterCampainStatusModel.dart';

class ProductNumbersDetails extends StatefulWidget {
  final CampainModel campainModel;

  ProductNumbersDetails({Key key, @required this.campainModel})
      : super(key: key);

  @override
  _ProductNumbersDetailsState createState() => _ProductNumbersDetailsState();
}

class _ProductNumbersDetailsState extends State<ProductNumbersDetails> {
  List<FilterCampainStatusModel> keyWordItens = [
    new FilterCampainStatusModel(label: "Notebook"),
    new FilterCampainStatusModel(label: "Elétrico"),
    new FilterCampainStatusModel(label: "Apple"),
    new FilterCampainStatusModel(label: "Informatica"),
    new FilterCampainStatusModel(label: "Tecnologia"),
  ];

  int numberSelected;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          appBar: _getAppBar(),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(color: Colors.grey[300]),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 2.0),
                        height: 134.0,
                        child: Card(
                          elevation: 2.5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 157.0,
                                height: 174.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(6.0),
                                    bottomLeft: Radius.circular(6.0),
                                  ),
                                  image: DecorationImage(
                                    image: ExactAssetImage(
                                        widget.campainModel.image),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      widget.campainModel.productype,
                                      style: TextStyle(
                                        fontFamily: 'HelveticaNeue',
                                        color: Color(0xff707070),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: 0.385,
                                      ),
                                    ),
                                    Text(
                                      widget.campainModel.productName,
                                      style: TextStyle(
                                        fontFamily: 'HelveticaNeue',
                                        color: Color(0xff000000),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    Text(
                                      widget.campainModel.price,
                                      style: TextStyle(
                                        fontFamily: 'HelveticaNeue',
                                        color: Color(0xff707070),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.confirmation_number,
                                            size: 18.0,
                                            color: Color(0xff707070)),
                                        SizedBox(width: 5.0),
                                        Text(
                                          '${widget.campainModel.solded}/${widget.campainModel.stock} Vendidos',
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
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.timer,
                                            size: 18.0,
                                            color: Color(0xff707070)),
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
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 12,
                    child: Wrap(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 4.0, top: 2.0),
                              height: 10,
                              decoration: BoxDecoration(color: Colors.white),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 4.0, top: 2.0),
                              height: 22,
                              decoration: BoxDecoration(color: Colors.white),
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 2.0),
                                itemCount: keyWordItens.length,
                                itemBuilder: (context, index) =>
                                    _filterItens(keyWordItens[index]),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15.0, vertical: 10.0),
                                child: _getGridViewNumbers(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 10,
                      decoration: new BoxDecoration(
                        color: Color(0xff707070),
                        border: Border.all(color: Color(0xff707070), width: 1),
                      ),
                      child: Center(
                        child: Text(
                          "Observações",
                          style: TextStyle(
                            fontFamily: 'HelveticaNeue',
                            color: Color(0xfff0f0f0),
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.22222222137451172,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      decoration: new BoxDecoration(
                        color: Colors.white,
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 10.0),
                            Text(
                              "Cada número, escolhido, fará parte de um conjunto de 4 números para sorteio no dia 25/08/2019. E o número do concurso é o 46456.",
                              style: TextStyle(
                                fontFamily: 'HelveticaNeue',
                                color: Color(0xff000000),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                letterSpacing: 0.22222222137451172,
                              ),
                              maxLines: 5,
                              overflow: TextOverflow.clip,
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              width: 359.5,
                              height: 0,
                              decoration: new BoxDecoration(
                                border: Border.all(
                                    color: Color(0xfff0f0f0), width: 1),
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Container(
                              width: 286,
                              height: 51,
                              decoration: new BoxDecoration(
                                  color: Color(0xffffa300),
                                  borderRadius: BorderRadius.circular(25)),
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  "Comprar",
                                  style: TextStyle(
                                    fontFamily: 'HelveticaNeue',
                                    color: Color(0xff002855),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: Text(
                                "Voltar",
                                style: TextStyle(
                                  fontFamily: 'HelveticaNeue',
                                  color: Color(0xff002855),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
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
          ),
        ),
      ),
    );
  }

  Widget _getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: marine_blue,
      automaticallyImplyLeading: true,
      title: Text(
        "Números",
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

  Widget _filterItens(FilterCampainStatusModel filterItens) {
    return Row(
      children: <Widget>[
        Container(
          width: 80,
          height: 18,
          decoration: new BoxDecoration(
            border: Border.all(color: Color(0xff979797), width: 1),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: EdgeInsets.all(0),
          child: Text(
            filterItens.label,
            style: TextStyle(
              fontSize: 10.0,
              color: Color(0xff707070),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(width: 10.0),
      ],
    );
  }

  Widget _getGridViewNumbers() {
    return GridView.count(
      crossAxisCount: 10,
      padding: EdgeInsets.all(0),
      shrinkWrap: true,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      children: List.generate(
        120,
        (index) => GestureDetector(
          onTap: () {
            if (numberSelected == 0) {
              setState(() {
                numberSelected = 1;
              });
            } else {
              setState(() {
                numberSelected = index;
              });
            }
          },
          child: Container(
            width: 20,
            height: 20,
            decoration: new BoxDecoration(
              color: (numberSelected == index && numberSelected > 0)
                  ? Color(0xffffa300)
                  : Color(0xff2b5eac),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                "${index + 1}",
                style: TextStyle(
                  fontFamily: 'HelveticaNeue',
                  color: Color(0xffffffff),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
