import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';

class MoodItem extends StatelessWidget {
  const MoodItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final w=SizeApp(context).width;

    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: SizeApp(context).width * 0.05,
              backgroundColor: const Color(0xFFFE9738),
              child: const Icon(
                Iconsax.emoji_happy_bold,
                color: Colors.white,
              ),
            ),
            const SizedBoxApp(
              w: 0.02,
            ),
             Text(
              '09:00 am:',
              style: PStyle.style14W600(w, const Color(0xFF1E1E1E)),
            ),
             Expanded(
              child: Text(
                'Malak was happy',
                style: PStyle.style14W400(w, const Color(0xFF1E1E1E)),
              ),
            )
          ],
        ),
        const SizedBoxApp(
          h: 0.02,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBoxApp(
              w: 0.045,
            ),
            if (index != 2) ...[
              Container(
                color: const Color(0xFFE5E1E5),
                width: 2,
                height: SizeApp(context).height * 0.15,
              ),
            ],
            const SizedBoxApp(
              w: 0.07,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: SizeApp(context).height*0.02,
                  horizontal: SizeApp(context).width*0.02,
                ),
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFEFEDEF)),
                  ),
                ),
                child:  Text(
                  'Malak had a great afternoon painting today. She painted a lion. Tomorrow, She wants to paint again',
                  style: PStyle.style14W400(w, const Color(0xFF1E1E1E)),
                ),
              ),
            )
          ],
        ),
        const SizedBoxApp(
          h: 0.02,
        ),
      ],
    );
  }
}
