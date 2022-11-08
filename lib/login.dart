import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/bloc/login_bloc.dart';
import 'package:login/view/login_view.dart';
import 'package:user/lib.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text('Login w/ Bloc')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) {
            return LoginBloc(userRepository: UserRepository());
          },
          child: const LoginView(),
        ),
      ),
    );
  }
}
