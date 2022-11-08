import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/register/bloc/register_event.dart';
import 'package:login/register/bloc/register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterState()) {
    on<RegisterEmailChanged>(_onRegisterEmailChanged);
  }

  void _onRegisterEmailChanged(
      RegisterEmailChanged event, Emitter<RegisterState> emit) {
    print(event.email);
    emit(state.copyWith(
      email: event.email,
    ));
    print(state);
  }
}
