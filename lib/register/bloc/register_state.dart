import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class RegisterState extends Equatable {
  const RegisterState({
    this.name = '',
    this.email = '',
    this.phone = '',
    this.password = '',
    this.passwordHidden = false,
    this.passwordIcon = Icons.visibility_off,
    this.passwordConfirm = '',
    this.passwordHiddenConfirm = false,
    this.passwordIconConfirm = Icons.visibility_off,
  });

  final String name;
  final String email;
  final String phone;
  final String password;
  final bool passwordHidden;
  final IconData passwordIcon;
  final String passwordConfirm;
  final bool passwordHiddenConfirm;
  final IconData passwordIconConfirm;
  @override
  List<Object> get props => [
        name,
        email,
        phone,
        password,
        passwordHidden,
        passwordIcon,
        passwordConfirm,
        passwordHiddenConfirm,
        passwordIconConfirm
      ];

  RegisterState copyWith(
          {String? name,
          String? email,
          String? phone,
          String? password,
          bool? passwordHidden,
          IconData? passwordIcon,
          String? passwordConfirm,
          bool? passwordHiddenConfirm,
          IconData? passwordIconConfirm}) =>
      RegisterState(
          name: name ?? this.name,
          email: email ?? this.email,
          phone: phone ?? this.phone,
          password: password ?? this.password,
          passwordHidden: passwordHidden ?? this.passwordHidden,
          passwordIcon: passwordIcon ?? this.passwordIcon,
          passwordConfirm: passwordConfirm ?? this.passwordConfirm,
          passwordHiddenConfirm:
              passwordHiddenConfirm ?? this.passwordHiddenConfirm,
          passwordIconConfirm: passwordIconConfirm ?? this.passwordIconConfirm);
}
