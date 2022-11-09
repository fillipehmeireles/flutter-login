import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/register/bloc/register_event.dart';
import 'package:login/register/bloc/register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterState()) {
    on<RegisterEmailChanged>(_onRegisterEmailChanged);
    on<RegisterNameChanged>(_onRegisterNameChanged);
    on<RegisterPhoneChanged>(_onRegisterPhoneChanged);
    on<RegisterPasswordChanged>(_onRegisterPasswordChanged);
    on<PasswordVisibilityChanged>(_onPasswordVisibilityChanged);
    on<RegisterPasswordConfirmChanged>(_onPasswordConfirmChanged);
    on<PasswordVisibilityConfirmChanged>(_onPasswordVisibilityConfirmChanged);
  }

  void _onRegisterEmailChanged(
          RegisterEmailChanged event, Emitter<RegisterState> emit) =>
      emit(state.copyWith(
        email: event.email,
      ));

  void _onRegisterNameChanged(
          RegisterNameChanged event, Emitter<RegisterState> emit) =>
      emit(state.copyWith(
        name: event.name,
      ));

  void _onRegisterPhoneChanged(
          RegisterPhoneChanged event, Emitter<RegisterState> emit) =>
      emit(state.copyWith(phone: event.phone));

  void _onPasswordVisibilityChanged(
          PasswordVisibilityChanged event, Emitter<RegisterState> emit) =>
      emit(state.copyWith(
          passwordHidden: !state.passwordHidden,
          passwordIcon:
              state.passwordHidden ? Icons.visibility_off : Icons.visibility));

  void _onPasswordVisibilityConfirmChanged(
          PasswordVisibilityConfirmChanged event,
          Emitter<RegisterState> emit) =>
      emit(state.copyWith(
          passwordHiddenConfirm: !state.passwordHiddenConfirm,
          passwordIconConfirm: state.passwordHiddenConfirm
              ? Icons.visibility_off
              : Icons.visibility));

  void _onRegisterPasswordChanged(
          RegisterPasswordChanged event, Emitter<RegisterState> emit) =>
      emit(state.copyWith(password: event.password));

  void _onPasswordConfirmChanged(
          RegisterPasswordConfirmChanged event, Emitter<RegisterState> emit) =>
      emit(state.copyWith(passwordConfirm: event.passwordConfirm));
}
