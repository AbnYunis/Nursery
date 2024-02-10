import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/jstyle.dart';
import 'package:nursery/core/utils/styles/p_style.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;

    return Row(
      children: [
        CircleAvatar(
          radius: SizeApp(context).width * 0.08,
          backgroundImage: const NetworkImage(
              'https://th.bing.com/th/id/OIP.2sMhHIFz5AVG8N5JYH29YAHaEK?w=313&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
        ),
        const SizedBoxApp(w: 0.02),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lonnie Murphy',
              style: PStyle.style14W600(
                w,
                const Color(0xFF1E1E1E),
              ),
            ),
            Text(
              '@Lonnie324',
              style: PStyle.style12W400(w, const Color(0xFFA6A6A6)),
            )
          ],
        ),
        const Spacer(),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: SizeApp(context).width * 0.025,
            vertical: SizeApp(context).height * 0.01,
          ),
          decoration: ShapeDecoration(
            color: const Color(0x19225B8B),
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(SizeApp(context).width * 0.05),
            ),
          ),
          child: Row(
            children: [
              const Icon(
                Iconsax.camera_bold,
                color: Color(0xFF225B8B),
              ),
              const SizedBoxApp(w: 0.02),
              Text(
                'Change',
                style: JStyles.style14W400(w, const Color(0xFF225B8B)),
              )
            ],
          ),
        )
      ],
    );
  }
}
