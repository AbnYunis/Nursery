import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';

class NapItem extends StatelessWidget {
  const NapItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;

    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: SizeApp(context).width * 0.05,
              backgroundColor: const Color(0xFFFE9738),
              child: const Icon(
                Iconsax.moon_bold,
                color: Colors.white,
              ),
            ),
            const SizedBoxApp(
              w: 0.02,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '09:00 am:',
                    style: PStyle.style14W600(w, const Color(0xFF1E1E1E)),
                  ),
                  Expanded(
                    child: Text(
                      'Malak had a nap from 11:00 am to 11:30 am',
                      style: PStyle.style14W400(w, const Color(0xFF1E1E1E)),
                    ),
                  ),
                ],
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
                height: SizeApp(context).height * 0.05,
              ),
            ],
            const SizedBoxApp(
              w: 0.07,
            ),
          ],
        ),
        const SizedBoxApp(
          h: 0.02,
        ),
      ],
    );
  }
}
