import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User(this.name, this.age, this.status);

  final String name;
  final int age;
  final bool status;
  @override
  List<Object> get props => [name, age, status];

  static const empty = User('', 0, false);
}
