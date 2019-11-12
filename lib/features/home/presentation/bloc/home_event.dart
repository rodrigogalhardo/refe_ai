import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class HomeLoad extends HomeEvent {
  final int param1;

  HomeLoad({@required this.param1});

  @override
  // TODO: implement props
  List<Object> get props => [param1];
}
