import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:nursery/core/utils/styles/p_style.dart';

import '../media_query.dart';

class DoneOrFinishRow extends StatelessWidget {
  const DoneOrFinishRow({super.key, required this.state, required this.text});

  final String state;
  final String text;

  @override
  Widget build(BuildContext context) {
    final h = SizeApp(context).height;
    final w = SizeApp(context).width;
    return Row(

      children: [
        Text(
          text,
          style: PStyle.style16W500(w, const Color(0xFF1E1E1E)),
        ),
        const Spacer(),
        Container(
          height: h * .03,
          padding: const EdgeInsets.only(top: 4, left: 8, right: 12, bottom: 4),
          decoration: ShapeDecoration(
            color: state.toLowerCase().contains('unfinish') ||
                    state.toLowerCase().contains('undone')
                ? const Color(0xFFD32222)
                : const Color(0xFF32A048),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                state.toLowerCase().contains('finish') ||
                        state.toLowerCase().contains('done')
                    ? Icons.check_circle_outline_rounded
                    : Iconsax.close_circle_outline,
                color: Colors.white,
                size: 15,
              ),
              const SizedBox(width: 8),
              Text(
                state,
                style: PStyle.style12W400(w, Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
