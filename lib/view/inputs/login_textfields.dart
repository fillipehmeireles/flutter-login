part of '../login_view.dart';

class _PasswordInput extends StatelessWidget {
  const _PasswordInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (previous, current) => previous.name != current.name,
        builder: (context, state) {
          return TextField(
            key: const Key('loginForm_PasswordInput_textField'),
            onChanged: (age) =>
                context.read<LoginBloc>().add(LoginAgeChanged(int.parse(age))),
            decoration: const InputDecoration(
              labelText: 'Password',
            ),
          );
        });
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (previous, current) => previous.name != current.name,
        builder: (context, state) {
          return PrimaryTextInput(
              text: 'E-mail',
              onChange: (name) =>
                  context.read<LoginBloc>().add(LoginNameChanged(name)));
        });
  }
}
