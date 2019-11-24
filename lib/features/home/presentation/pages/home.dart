import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:rife_ai/Theme.dart';
import 'package:rife_ai/features/home/data/models/campainModel.dart';
import 'package:rife_ai/features/home/data/models/filterCampainStatusModel.dart';
import 'package:rife_ai/features/home/data/models/homeModel.dart';
import 'package:rife_ai/features/product/presentation/pages/home_details/product_home_details.dart';
import 'package:rife_ai/shared/FadeRoute.dart';

class Home extends StatefulWidget {
  final List<HomeModel> items;

  Home({Key key, @required this.items}) : super(key: key);

  @override
  State createState() => _HomeState();
}

class _HomeState extends State<Home> {
  FilterCampainStatusModel isSelected;

  List<FilterCampainStatusModel> filterItens = [
    new FilterCampainStatusModel(label: "Ativos"),
    new FilterCampainStatusModel(label: "Encerradas"),
    new FilterCampainStatusModel(label: "Pendentes"),
    new FilterCampainStatusModel(label: "Reprovadas"),
  ];

  List<CampainModel> campainItens = [
    new CampainModel(
        image: 'assets/mock/notebook.png',
        productype: 'Informática',
        productName: "Macbook Pro 2017",
        price: "R\$ 3.000,00",
        solded: 45,
        stock: 100,
        offerCountDown: 3),
    new CampainModel(
        image: 'assets/mock/iphoneX.png',
        productype: 'Smarthphone',
        productName: "Iphone X",
        price: "R\$ 6.000,00",
        solded: 45,
        stock: 100,
        offerCountDown: 3),
    new CampainModel(
        image: 'assets/mock/violao.png',
        productype: 'Instrumentos Musicais',
        productName: "Violão Gianinni",
        price: "R\$ 1.100,00",
        solded: 45,
        stock: 100,
        offerCountDown: 3),
    new CampainModel(
        image: 'assets/mock/wwag.png',
        productype: 'Automóvies',
        productName: "Polo 2015",
        price: "R\$ 23.000,00",
        solded: 45,
        stock: 100,
        offerCountDown: 3),
    new CampainModel(
        image: 'assets/mock/notebook.png',
        productype: 'Informática',
        productName: "Macbook Air 2019",
        price: "R\$ 23.000,00",
        solded: 45,
        stock: 100,
        offerCountDown: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                itemCount: filterItens.length,
                itemBuilder: (context, index) =>
                    _filterItens(filterItens[index]),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: AnimationLimiter(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: campainItens.length,
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                itemBuilder: (context, index) =>
                    AnimationConfiguration.staggeredList(
                  position: index,
                  duration: Duration(microseconds: 500),
                  child: SlideAnimation(
                    verticalOffset: 50.0,
                    child: FadeInAnimation(
                      child: _campainCard(campainItens[index]),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _filterItens(FilterCampainStatusModel filterItens) {
    return Row(
      children: <Widget>[
        FilterChip(
          backgroundColor: Colors.transparent,
          shape: StadiumBorder(
            side: BorderSide(
                color: filterItens.selected ? bright_blue : Colors.grey),
          ),
          label: Text(
            filterItens.label,
            style: TextStyle(
              color: filterItens.selected ? Colors.white : Color(0xff707070),
            ),
          ),
          selectedColor: bright_blue,
          selected: filterItens.selected,
          checkmarkColor: orange_yellow,
          onSelected: (selected) {
            setState(() {
              filterItens.selected = selected;
            });
          },
        ),
        SizedBox(width: 10.0),
      ],
    );
  }

  Widget _campainCard(CampainModel modelItem) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          FadeRoute(
              page: HomeProductDetails(
                  key: this.widget.key, campainModel: modelItem))),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 2.0),
        width: 492.0,
        height: 126.0,
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
                    image: ExactAssetImage(modelItem.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      modelItem.productype,
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
                      modelItem.productName,
                      style: TextStyle(
                        fontFamily: 'HelveticaNeue',
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      modelItem.price,
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
                            size: 18.0, color: Color(0xff707070)),
                        SizedBox(width: 5.0),
                        Text(
                          '${modelItem.solded}/${modelItem.stock} Vendidos',
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
                        Icon(Icons.timer, size: 18.0, color: Color(0xff707070)),
                        SizedBox(width: 5.0),
                        Text(
                          'Termina em (${modelItem.offerCountDown})',
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
    );
  }
}
