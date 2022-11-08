part of '../login_view.dart';

class _RegisterButton extends StatelessWidget {
  const _RegisterButton();

  @override
  Widget build(BuildContext context) {
    return PrimaryTextButton(
        text: 'create a new account',
        onPress: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const RegisterPage())));
  }
}
