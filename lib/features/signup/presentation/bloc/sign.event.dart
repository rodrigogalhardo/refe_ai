import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class SignEvent extends Equatable {
  const SignEvent();
}

class SignLoad extends SignEvent {
  final bool canLogin;

  SignLoad({@required this.canLogin});

  @override
  // TODO: implement props
  List<Object> get props => [canLogin];
}
