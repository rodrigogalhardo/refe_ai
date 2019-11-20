import 'package:equatable/equatable.dart';

abstract class SignState extends Equatable {
  const SignState();
}

class InitialSignState extends SignState {
  @override
  List<Object> get props => null;
}

class LoadingSignState extends SignState {
  @override
  // TODO: implement props
  List<Object> get props => null;
}

class SignLoaded extends SignState {
  final bool canLogin;

  SignLoaded({this.canLogin});

  @override
  // TODO: implement props
  List<Object> get props => [canLogin];
}
