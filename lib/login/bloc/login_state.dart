part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState(
      {this.email = '',
      this.password = '',
      this.status = false,
      this.submitLoading = false,
      this.passwordHidden = false,
      this.passwordIcon = Icons.visibility});

  @override
  List<Object> get props =>
      [email, password, status, submitLoading, passwordHidden, passwordIcon];

  final String email;
  final String password;
  final bool status;
  final bool submitLoading;
  final bool passwordHidden;
  final IconData passwordIcon;
  LoginState copyWith(
          {String? email,
          String? password,
          bool? status,
          bool? submitLoading,
          bool? passwordHidden,
          IconData? passwordIcon}) =>
      LoginState(
          email: email ?? this.email,
          password: password ?? this.password,
          status: status ?? this.status,
          submitLoading: submitLoading ?? this.submitLoading,
          passwordHidden: passwordHidden ?? this.passwordHidden,
          passwordIcon: passwordIcon ?? this.passwordIcon);
}
