import 'package:flutter/material.dart';
import 'package:nursery/features/login/presentation/views/widgets/login_body.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: LoginBody(),
      ),
    );
  }
}
