import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:nursery/core/utils/media_query.dart';

class DailyItem extends StatelessWidget {
  const DailyItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    bool isText = true;
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: SizeApp(context).width * 0.05,
              backgroundColor: const Color(0xFFFE9738),
              child: const Icon(
                Iconsax.logout_1_bold,
                color: Colors.white,
              ),
            ),
            const SizedBoxApp(
              w: 0.02,
            ),
            const Text(
              '09:00 am:',
              style: TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            const Expanded(
              child: Text(
                'Malak Checked-in',
                style: TextStyle(
                  color: Color(0xFF1E1E1E),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
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
            if (index != 6) ...[
              Container(
                color: const Color(0xFFE5E1E5),
                width: 2,
                height: SizeApp(context).height * 0.2,
              ),
            ],
            const SizedBoxApp(
              w: 0.07,
            ),
            isText==true&&index!=6 ? Expanded(
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
                      child: const Text(
                        'Malak had a great afternoon painting today. She painted a lion. Tomorrow, She wants to paint again',
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ) : Expanded(
                    child: Image.network(
                      'https://th.bing.com/th/id/OIP.JbK3CNRtBsEEP5K8RLRJyAHaE8?w=297&h=198&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      height: SizeApp(context).height * 0.2,
                      fit: BoxFit.cover,
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
