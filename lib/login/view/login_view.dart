import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/register/register.dart';
import 'package:login/style/app_style.dart';

import 'package:login/widgets/buttons/primary_button.dart';
import 'package:login/widgets/buttons/primary_text_button.dart';
import 'package:login/widgets/text_inputs/primary_text_input.dart';
import '../bloc/login_bloc.dart';

part 'buttons/login_button.dart';
part 'inputs/login_textfields.dart';
part 'buttons/register_button.dart';
part 'buttons/forgot_password_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /*  const Image(
              image: AssetImage('assets/images/logo.png'),
              width: 100,
            ),*/
            SizedBox(
              width: 95,
              child: Image.asset('assets/images/logo.png').blurred(
                colorOpacity: 0,
                borderRadius:
                    const BorderRadius.horizontal(right: Radius.circular(10)),
                blur: 1.8,
              ),
            ),
            Text(
              'Welcome Back',
              style: TextStyle(
                  color: AppStyle.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 36.0),
            ),
            Text('Sign to continue',
                style:
                    TextStyle(color: AppStyle.secondaryColor, fontSize: 16.0)),
            const Padding(padding: EdgeInsets.only(bottom: 80)),
            const _EmailInput(),
            const Padding(padding: EdgeInsets.all(12)),
            //_PasswordInput(),
            const _PasswordInput(),
            //Padding(padding: EdgeInsets.all(6)),
            const Align(
              alignment: Alignment.centerRight,
              child: ForgotPasswordButton(),
            ),
            const Padding(padding: EdgeInsets.all(18)),
            const _LoginButton(),
            const Padding(padding: EdgeInsets.all(18)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Don't have account?",
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                const _RegisterButton(),
              ],
            )
          ],
        );
      }),
    );
  }
}
