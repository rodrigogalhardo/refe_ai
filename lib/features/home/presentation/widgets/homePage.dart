import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rife_ai/features/home/presentation/bloc/bloc.dart';
import 'package:rife_ai/features/home/presentation/widgets/homeModule.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SafeArea(
        child: Scaffold(
          appBar: _getAppBar(),
          body: _getBody()
        )
      )
    );
  }

  Widget _getAppBar() {
    return AppBar();
  }

  Widget _getBody() {
    return BlocProvider(
      builder: (context) => HomeBloc()..add(HomeLoad(param1: 0)),
      child: HomeModule(),
    );
  }
}