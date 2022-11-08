part of '../login_view.dart';

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return state.submitLoading
          ? const CircularProgressIndicator()
          : PrimaryButton(
              text: "Login",
              onPress: () =>
                  context.read<LoginBloc>().add(const LoginSubmitted(true)));
    });
  }
}
