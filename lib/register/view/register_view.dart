import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/register/bloc/register_bloc.dart';
import 'package:login/register/bloc/register_event.dart';
import 'package:login/register/bloc/register_state.dart';
import 'package:login/style/app_style.dart';
import 'package:login/widgets/buttons/primary_button.dart';
import 'package:login/widgets/buttons/primary_text_button.dart';
import 'package:login/widgets/text_inputs/email_text_input.dart';
import 'package:login/widgets/text_inputs/password_text_input.dart';
import 'package:login/widgets/text_inputs/phone_text_input.dart';
import 'package:login/widgets/text_inputs/user_text_input.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child:
          BlocBuilder<RegisterBloc, RegisterState>(builder: (context, state) {
        return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Create Account',
                style: TextStyle(
                    color: AppStyle.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 36.0),
              ),
              Text('Create a new account',
                  style: TextStyle(
                      color: AppStyle.secondaryColor, fontSize: 16.0)),
              const Padding(padding: EdgeInsets.only(bottom: 22)),
              UserTextInput(
                  text: 'USER',
                  onChange: (name) => context
                      .read<RegisterBloc>()
                      .add(RegisterNameChanged(name))),
              const Padding(padding: EdgeInsets.all(12)),
              EmailTextInput(
                  text: 'EMAIL',
                  onChange: (email) => context
                      .read<RegisterBloc>()
                      .add(RegisterEmailChanged(email))),
              const Padding(padding: EdgeInsets.all(12)),
              PhoneTextInput(
                  text: 'PHONE',
                  onChange: (phone) => context
                      .read<RegisterBloc>()
                      .add(RegisterPhoneChanged(phone))),
              const Padding(padding: EdgeInsets.all(12)),
              PasswordTextInput(
                  passwordHidden: state.passwordHidden,
                  passwordIcon: state.passwordIcon,
                  onChange: (password) => context
                      .read<RegisterBloc>()
                      .add(RegisterPasswordChanged(password)),
                  onPress: () => context
                      .read<RegisterBloc>()
                      .add(const PasswordVisibilityChanged())),
              const Padding(padding: EdgeInsets.all(12)),
              PasswordTextInput(
                  text: 'CONFIRM PASSWORD',
                  passwordHidden: state.passwordHiddenConfirm,
                  passwordIcon: state.passwordIconConfirm,
                  onChange: (passwordConfirm) => context
                      .read<RegisterBloc>()
                      .add(RegisterPasswordConfirmChanged(passwordConfirm)),
                  onPress: () => context
                      .read<RegisterBloc>()
                      .add(const PasswordVisibilityConfirmChanged())),
              const Padding(padding: EdgeInsets.all(12)),
              PrimaryButton(text: 'CREATE ACCOUNT', onPress: () => {}),
              const Padding(padding: EdgeInsets.all(12)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Already have account?",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  PrimaryTextButton(
                      text: 'Login', onPress: () => Navigator.of(context).pop())
                ],
              )
            ]);
      }),
    );
  }
}
