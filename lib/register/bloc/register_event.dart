import 'package:equatable/equatable.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class RegisterEmailChanged extends RegisterEvent {
  const RegisterEmailChanged(this.email);

  final String email;
  @override
  List<Object> get props => [email];
}

class RegisterNameChanged extends RegisterEvent {
  const RegisterNameChanged(this.name);

  final String name;
  @override
  List<Object> get props => [name];
}

class RegisterPhoneChanged extends RegisterEvent {
  const RegisterPhoneChanged(this.phone);

  final String phone;
  @override
  List<Object> get props => [phone];
}

class RegisterPasswordChanged extends RegisterEvent {
  const RegisterPasswordChanged(this.password);

  final String password;

  @override
  List<Object> get props => [password];
}

class PasswordVisibilityChanged extends RegisterEvent {
  const PasswordVisibilityChanged();

  @override
  List<Object> get props => [];
}

class RegisterPasswordConfirmChanged extends RegisterEvent {
  const RegisterPasswordConfirmChanged(this.passwordConfirm);

  final String passwordConfirm;

  @override
  List<Object> get props => [passwordConfirm];
}

class PasswordVisibilityConfirmChanged extends RegisterEvent {
  const PasswordVisibilityConfirmChanged();

  @override
  List<Object> get props => [];
}
