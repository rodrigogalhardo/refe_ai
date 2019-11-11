import 'package:equatable/equatable.dart';

abstract class AjudaState extends Equatable {
  const AjudaState();
}

class InitialAjudaState extends AjudaState {
  @override
  List<Object> get props => [];
}
