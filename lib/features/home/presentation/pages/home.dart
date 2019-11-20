import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rife_ai/features/home/data/models/homeModel.dart';
import 'package:rife_ai/features/home/presentation/bloc/bloc.dart';

class Home extends StatefulWidget {

  final List<HomeModel> items;

  Home({Key key, @required this.items}) : super(key: key);

  @override
  State createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[
           Expanded(
             flex: 5,
             child: ListView.builder(
               shrinkWrap: true,
               itemCount: widget.items.length,
               itemBuilder: (context, index) => ListTile(title: Text(widget.items[index].param1.toString())),
             )
           ),
           Expanded(
             flex: 2,
             child: Row(
               children: <Widget>[
                 Expanded(
                   flex: 1,
                   child: Container(color: Colors.blue)
                 ),
                 Expanded(
                   flex: 1,
                   child: Container(color: Colors.green)
                 ),
                 Expanded(
                   flex: 1,
                   child: Container(color: Colors.black)
                 )
               ],
             )
           ),
           Expanded(
             flex: 1,
             child: Container(
               margin: EdgeInsets.all(10),
               color: Colors.yellow,
               child: FlatButton(
                 onPressed: () {
                   BlocProvider.of<HomeBloc>(context).add(HomeLoad(param1: widget.items.length));
                 },
                 color: Colors.blue,
                 child: Text("adidionar um na lista")
               ),
              )
           ),
         ],
       )
    );
  }
}