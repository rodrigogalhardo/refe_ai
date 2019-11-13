import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rife_ai/features/sign/presentation/bloc/sign.bloc.dart';
import 'package:rife_ai/features/sign/presentation/bloc/sign.event.dart';
import 'package:rife_ai/features/sign/presentation/widgets/signModule.dart';

class SignPage extends StatefulWidget {
  final bool canLogin;

  SignPage({Key key, @required this.canLogin}) : super(key: key);

  @override
  State createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SafeArea(
        top: false,
        child: Scaffold(body: _getBody()),
      ),
    );
  }

  Widget _getBody() {
    return BlocProvider(
      builder: (context) =>
          SignBloc()..add(SignLoad(canLogin: widget.canLogin)),
      child: SignModule(),
    );
  }
}
