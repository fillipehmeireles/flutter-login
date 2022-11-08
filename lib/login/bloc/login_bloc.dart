import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginEmailChanged>(_onLoginEmailChanged);
    on<LoginPasswordChanged>(_onLoginPasswordChanged);
    on<LoginSubmitted>(_onLoginSubmitted);
    on<PasswordVisibilityChanged>(_onPasswordVisibilityChanged);
  }

  void _onLoginEmailChanged(
          LoginEmailChanged event, Emitter<LoginState> emit) =>
      emit(state.copyWith(email: event.email));

  void _onLoginPasswordChanged(
          LoginPasswordChanged event, Emitter<LoginState> emit) =>
      emit(state.copyWith(password: event.password));

  void _onLoginSubmitted(LoginSubmitted event, Emitter<LoginState> emit) =>
      emit(state.copyWith(submitLoading: event.submitLoading));

  void _onPasswordVisibilityChanged(
          PasswordVisibilityChanged event, Emitter<LoginState> emit) =>
      emit(state.copyWith(
          passwordHidden: !state.passwordHidden,
          passwordIcon:
              state.passwordHidden ? Icons.visibility_off : Icons.visibility));
}
