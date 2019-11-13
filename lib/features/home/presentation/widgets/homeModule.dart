import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rife_ai/features/home/presentation/pages/home.dart';
import 'package:rife_ai/features/home/presentation/pages/homeInitial.dart';
import 'package:rife_ai/features/home/presentation/pages/homeLoading.dart';

import '../bloc/bloc.dart';

class HomeModule extends StatefulWidget {
  HomeModule({Key key}) : super(key: key);

  @override
  State createState() => _HomeModuleState();
}

class _HomeModuleState extends State<HomeModule> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: BlocProvider.of<HomeBloc>(context),
      builder: (context, state) {
        switch (state.runtimeType) {
          case InitialHomeState:
            //InitialHomeState s = state as InitialHomeState;
            return HomeInitial();
            break;
          case LoadingHomeState:
            //LoadingHomeState s = state as LoadingHomeState;
            return HomeLoading();
            break;
          case HomeLoaded:
            HomeLoaded s = state as HomeLoaded;
            return Home(items: s.homeList);
            break;
        }

        // Default
        return Text("vazio");
      },
    );
  }
}
