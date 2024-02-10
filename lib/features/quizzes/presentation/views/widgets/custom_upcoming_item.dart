import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nursery/core/utils/assets.dart';
import 'package:nursery/core/utils/styles/p_style.dart';
import 'package:nursery/core/utils/widgets/time_data.dart';

import '../../../../../core/utils/media_query.dart';

class CustomUpcomingItem extends StatelessWidget {
  const CustomUpcomingItem({super.key});

  @override
  Widget build(BuildContext context) {
    final h = SizeApp(context).height;
    final w = SizeApp(context).width;
    return Container(
      padding: EdgeInsets.all(w * .03),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(w * .02),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x1E000000),
            blurRadius: 12,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          SvgPicture.asset(AssetService.logo,height: h * .1,),
           Expanded(
             child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                  Text(
                    'Mathematics',
                    style: PStyle.style16W500(w, const Color(0xFF1E1E1E)),
                  ),
                    const SizedBoxApp(w: .1,),
                   Text(
                    '15 Questions',
                    style: PStyle.style12W400(w, const Color(0xFF225B8B)),
                  ),
                ],),
                const Row(
                  children: [
                    DateWidget(color: Color(0xFFA6A6A6),),
                    SizedBoxApp(w: .05,),
                    TimeWidget(color: Color(0xFFA6A6A6),),
                  ],
                )
              ],
                       ),
           )
        ],
      ),
    );
  }
}
