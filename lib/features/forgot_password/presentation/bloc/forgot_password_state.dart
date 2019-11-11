import 'package:equatable/equatable.dart';

abstract class ForgotPasswordState extends Equatable {
  const ForgotPasswordState();
}

class InitialForgotPasswordState extends ForgotPasswordState {
  @override
  List<Object> get props => [];
}
