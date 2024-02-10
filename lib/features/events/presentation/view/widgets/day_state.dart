import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';

class DayState extends StatelessWidget {
  const DayState({
    super.key,
    required this.color,
    required this.text,
  });

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    final w=SizeApp(context).width;

    return Row(
      children: [
        CircleAvatar(
          radius: 5,
          backgroundColor: color,
        ),
        const SizedBoxApp(
          w: 0.015,
        ),
        Text(
          text,
          style: PStyle.style16W500(w, color)
        )
      ],
    );
  }
}
