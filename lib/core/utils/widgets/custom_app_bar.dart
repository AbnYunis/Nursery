import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:nursery/core/utils/assets.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/jstyle.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final w=SizeApp(context).width;
    return Row(
      children: [
        SvgPicture.asset(AssetService.logo,
            width: SizeApp(context).width * 0.1),
        const SizedBoxApp(
          w: 0.02,
        ),
         Text(
          'Rouse Berry',
          style: JStyles.style18W500(w, const Color(0xFF225B8B)),
        ),
        const Spacer(),
        Container(
            padding: EdgeInsets.all(SizeApp(context).width * 0.01),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              shadows:const [
                 BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 8,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: const Stack(
              children: [
                Icon(Iconsax.notification_bold,
                    color: Color(0xFF225B8B), size: 30),
                Positioned(
                  top: 4,
                  right:7,
                  child: CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.red,
                  ),
                )
              ],
            )
            //SvgPicture.asset(AssetService.notification),
            )
      ],
    );
  }
}
