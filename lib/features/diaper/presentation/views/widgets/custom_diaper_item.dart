import 'package:flutter/material.dart';

import '../../../../../core/utils/media_query.dart';
import '../../../../../core/utils/styles/p_style.dart';

class CustomDiaperItem extends StatelessWidget {
  final String text;

  const CustomDiaperItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final h = SizeApp(context).height;
    final w = SizeApp(context).width;
    return Container(
      height: h * .07,
      decoration: ShapeDecoration(
        color: const Color(0xFFFEA95C),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(w * .02),
        ),
      ),
      child: Center(
          child: Text(
        text,
        style: PStyle.style18W400(w, Colors.white),
      )),
    );
  }
}
