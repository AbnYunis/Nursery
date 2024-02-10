import 'package:flutter/material.dart';
import 'package:nursery/core/utils/styles/p_style.dart';

import '../../../../../core/utils/media_query.dart';

class RowItem extends StatelessWidget {
  final String text;
  final String time;

  const RowItem({super.key, required this.text, required this.time});

  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: PStyle.style14W500(w, const Color(0xFF1E1E1E)),
        ),
        Text(
          time,
          style: PStyle.style12W400(w, const Color(0xFFBCBCBC)),
        ),
      ],
    );
  }
}
