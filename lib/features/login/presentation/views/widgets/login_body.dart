import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nursery/core/utils/app_router.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/jstyle.dart';
import 'package:nursery/core/utils/widgets/custom_button.dart';
import 'package:nursery/features/login/presentation/views/widgets/login_form.dart';
import 'package:nursery/features/splash/presentations/views/widgets/circles_stack.dart';

import 'first_login_section.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;
    return Stack(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeApp(context).width * .05),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const FirstLoginSection(),
                const LoginForm(),
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      fillColor: MaterialStateProperty.all(Colors.green),
                      onChanged: (value) {},
                    ),
                    Text('Keep me logged in',
                        style: JStyles.style14W400(w, const Color(0xFF292D32))),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text('Forgot Password?',
                          style:
                              JStyles.style14W400(w, const Color(0xFF292D32))),
                    ),
                  ],
                ),
                const SizedBoxApp(
                  h: 0.02,
                ),
                CustomButton(
                    onPressed: () {
                      GoRouter.of(context).pushReplacement(AppRouter.home);
                    },
                    text: 'Login'),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(0, SizeApp(context).height * .07),
          child: const CirclesStack(),
        ),
      ],
    );
  }
}
