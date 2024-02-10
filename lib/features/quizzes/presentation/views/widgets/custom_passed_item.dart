import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nursery/core/utils/styles/p_style.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/media_query.dart';
import 'texts_widget.dart';

class CustomPassedItem extends StatelessWidget {
  const CustomPassedItem({super.key});

  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;
    final h = SizeApp(context).height;
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
          const TextsWidget(),
          const Spacer(),
          CircularPercentIndicator(
            radius: w * .06,
            percent: .95,
            lineWidth: 4,
            progressColor: const Color(0xFF32A048),
            center: Text(
              '95%',
              style: PStyle.style12W400(w, const Color(0xFF32A048)),
            ),
          ),
        ],
      ),
    );
  }
}
