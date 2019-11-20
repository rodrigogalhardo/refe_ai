import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:rife_ai/features/signup/data/models/sign.model.dart';
import 'package:rife_ai/features/signup/presentation/bloc/sign.event.dart';
import 'package:rife_ai/features/signup/presentation/bloc/sign.state.dart';

class SignBloc extends Bloc<SignEvent, SignState> {
  SignModel _signModel;

  @override
  // TODO: implement initialState
  SignState get initialState => InitialSignState();

  @override
  Stream<SignState> mapEventToState(SignEvent event) async* {
    switch (event.runtimeType) {
      case SignLoad:
        SignLoad e = event as SignLoad;

        print("param1: " + e.canLogin.toString());

        if (e.canLogin == true) {
          yield LoadingSignState();
        } else {
          //Chamar o repositorio para salvar os dados do login.
          yield SignLoaded();
        }

        break;
    }
  }
}
