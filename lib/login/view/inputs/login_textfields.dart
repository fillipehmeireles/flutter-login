part of '../login_view.dart';

class _PasswordInput extends StatelessWidget {
  const _PasswordInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (previous, current) =>
            previous.password != current.password ||
            previous.passwordHidden != current.passwordHidden,
        builder: (context, state) {
          return PrimaryTextInput(
              text: 'PASSWORD',
              obscureText: state.passwordHidden,
              iconButton: IconButton(
                icon: Icon(state.passwordIcon, color: AppStyle.primaryColor),
                onPressed: () => context
                    .read<LoginBloc>()
                    .add(const PasswordVisibilityChanged()),
              ),
              onChange: (password) => context
                  .read<LoginBloc>()
                  .add(LoginPasswordChanged(password)));
        });
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (previous, current) => previous.email != current.email,
        builder: (context, state) {
          return PrimaryTextInput(
              text: 'EMAIL',
              icon: Icon(
                Icons.mail,
                color: AppStyle.primaryColor,
              ),
              onChange: (email) =>
                  context.read<LoginBloc>().add(LoginEmailChanged(email)));
        });
  }
}
