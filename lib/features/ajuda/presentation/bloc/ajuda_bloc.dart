import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class AjudaBloc extends Bloc<AjudaEvent, AjudaState> {
  @override
  AjudaState get initialState => InitialAjudaState();

  @override
  Stream<AjudaState> mapEventToState(
    AjudaEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
