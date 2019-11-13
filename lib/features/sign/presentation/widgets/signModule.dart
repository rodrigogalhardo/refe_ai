import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rife_ai/features/sign/presentation/bloc/bloc.dart';
import 'package:rife_ai/features/sign/presentation/pages/sign.dart';
import 'package:rife_ai/features/sign/presentation/pages/signInitial.dart';
import 'package:rife_ai/features/sign/presentation/pages/signLoading.dart';

class SignModule extends StatefulWidget {
  SignModule({Key key}) : super(key: key);

  @override
  _SignModuleState createState() => _SignModuleState();
}

class _SignModuleState extends State<SignModule> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignBloc, SignState>(
      bloc: BlocProvider.of<SignBloc>(context),
      builder: (context, state) {
        switch (state.runtimeType) {
          case InitialSignState:
            return SignInitial();
            break;
          case LoadingSignState:
            return SignLoading();
            break;
          case SignLoaded:
            SignLoaded s = state as SignLoaded;
            return Sign(canLogin: s.canLogin);
            break;
        }

        return Center(
          child: Text("Não foi possível carregar a tela de login"),
        );
      },
    );
  }
}
