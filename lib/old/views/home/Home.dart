import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rife_ai/Theme.dart';
import 'package:rife_ai/controllers/HomeController.dart';
import 'package:rife_ai/models/Mock/product-mock.model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController homeController = new HomeController();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: homeController.GetAllProducts(),
      builder: (context, snap) {
        if (snap.hasError) {
          return Center(
            child: Text(
              "Não foi possível carregar a lista de itens :(",
              style: TextStyle(
                color: lightGrey,
                fontSize: 18.0,
                fontStyle: FontStyle.normal,
              ),
            ),
          );
        } else if (!snap.hasData) {
          return Center(child: CircularProgressIndicator());
        } else {
          return _buildListView(context, snap);
        }
      },
    );
  }

  //mock: https://picsum.photos/v2/list?page=2&limit=100
  Widget _buildListView(BuildContext context, AsyncSnapshot snap) {
    var data = snap.data as List<ProductMockModel>;
    return ListView.separated(
      itemCount: data == null ? 0 : data.length,
      separatorBuilder: (context, index) {
        return Divider(height: 1.0, color: transparentButton);
      },
      itemBuilder: (BuildContext context, index) {
        return new Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Container(
                  height: 343.0,
                  margin: EdgeInsets.only(left: 0.0, right: 2.0, bottom: 2.0),
                  child: Image.network(
                    data[index].downloadUrl,
                    fit: BoxFit.cover,
                    width: 150.0,
                  ),
                ),
                title: Text(
                  "${data[index].author}",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("R\$ ${data[index].id}"),
                    Text("45/${data[index].id} Vendidos"),
                    Text("Encerra em (${data[index].id}d)"),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
