import 'package:equatable/equatable.dart';

class RegisterState extends Equatable {
  const RegisterState(
      {this.name = '', this.email = '', this.phone = '', this.password = ''});

  final String name;
  final String email;
  final String phone;
  final String password;

  @override
  List<Object> get props => [name, email, phone, password];

  RegisterState copyWith(
          {String? name, String? email, String? phone, String? password}) =>
      RegisterState(
          name: name ?? this.name,
          email: email ?? this.email,
          phone: phone ?? this.phone,
          password: password ?? this.password);
}
