import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:rife_ai/features/home/data/models/homeModel.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class InitialHomeState extends HomeState {
  @override
  // TODO: implement props
  List<Object> get props => null;
}

class LoadingHomeState extends HomeState {
  @override
  // TODO: implement props
  List<Object> get props => null;
}

class HomeLoaded extends HomeState {
  final List<HomeModel> homeList;
  final int listLength;

  HomeLoaded({@required this.homeList, @required this.listLength});

  @override
  // TODO: implement props
  List<Object> get props => [homeList, listLength];
}
