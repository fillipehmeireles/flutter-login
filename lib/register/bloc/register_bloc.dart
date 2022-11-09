import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/register/bloc/register_event.dart';
import 'package:login/register/bloc/register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterState()) {
    on<RegisterEmailChanged>(_onRegisterEmailChanged);
    on<RegisterNameChanged>(_onRegisterNameChanged);
    on<RegisterPhoneChanged>(_onRegisterPhoneChanged);
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
}
