import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  @override
  SignupState get initialState => InitialSignupState();

  @override
  Stream<SignupState> mapEventToState(
    SignupEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
