import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:rife_ai/features/home/data/models/homeModel.dart';
import 'package:rife_ai/features/home/domain/repositories/HomeRepository.dart';
import './bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  HomeRepository _homeRepository = HomeRepository();
  List<HomeModel> _list = List<HomeModel>();

  @override
  HomeState get initialState => InitialHomeState();

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    switch (event.runtimeType) {
      case HomeLoad:
        HomeLoad e = event as HomeLoad;

        print ("param1: " + e.param1.toString());

        if (e.param1 == 0) {
          // Loading somente quando for para resetar a lista
          yield LoadingHomeState();

          _list = await _homeRepository.databaseTest(e.param1);
        }
        else {
          _list.add(HomeModel(param1: _list.length));
        }

        yield HomeLoaded(homeList: _list, listLength: _list.length);
        break;
    }
  }
}
