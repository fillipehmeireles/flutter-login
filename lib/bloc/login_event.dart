part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
  @override
  List<Object> get props => [];
}

class LoginNameChanged extends LoginEvent {
  const LoginNameChanged(this.name);

  final String name;

  @override
  List<Object> get props => [name];
}

class LoginAgeChanged extends LoginEvent {
  const LoginAgeChanged(this.age);

  final int age;

  @override
  List<Object> get props => [age];
}

class LoginSubmitted extends LoginEvent {
  const LoginSubmitted(this.submitLoading);

  final bool submitLoading;

  @override
  List<Object> get props => [submitLoading];
}
