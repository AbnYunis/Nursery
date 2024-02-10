import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/jstyle.dart';
import 'package:nursery/core/utils/widgets/custom_text_form.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Username',
          style: JStyles.style16W600(w, Colors.black),
        ),
        const SizedBoxApp(
          h: .01,
        ),
        const CustomTextForm(hText: 'Enter your username'),
        const SizedBoxApp(
          h: .02,
        ),
        Text(
          'Password',
          style: JStyles.style16W600(w, Colors.black),
        ),
        const SizedBoxApp(h: .01),
        CustomTextForm(
          hText: 'Enter your password',
          clickIcon: () {},
        ),
      ],
    ));
  }
}
