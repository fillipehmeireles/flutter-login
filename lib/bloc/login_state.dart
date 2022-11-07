part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState(
      {this.name = '',
      this.age = 0,
      this.status = false,
      this.submitLoading = false});

  @override
  List<Object> get props => [name, age, status, submitLoading];

  final String name;
  final int age;
  final bool status;
  final bool submitLoading;

  LoginState copyWith(
      {String? name, int? age, bool? status, bool? submitLoading}) {
    return LoginState(
        name: name ?? this.name,
        age: age ?? this.age,
        status: status ?? this.status,
        submitLoading: submitLoading ?? this.submitLoading);
  }
}
