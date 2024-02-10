import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nursery/core/utils/assets.dart';
import 'package:nursery/core/utils/styles/jstyle.dart';

import '../../../../../core/utils/media_query.dart';
class FirstLoginSection extends StatelessWidget {
  const FirstLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    final h=SizeApp(context).height;
    final w=SizeApp(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBoxApp(
          h: .05,
        ),
        SvgPicture.asset(AssetService.logo),
        const SizedBoxApp(
          h: .04,
        ),
         Text(
          'Let’s get started',
          style: JStyles.loginStyle(w),
        ),
        const SizedBoxApp(
          h: .01,
        ),
         Text(
          'We bring parents closer and lets you focus on growing your childcare business.',
          style: JStyles.style16W400(w, const Color(0xFFA6A6A6)),
          textAlign: TextAlign.center,
        ),
        const SizedBoxApp(h: .06,),
      ],
    );
  }
}
