import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nursery/core/utils/widgets/time_data.dart';
import 'package:nursery/core/utils/widgets/done_finish_row.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/media_query.dart';

class CustomBottleItem extends StatelessWidget {
  const CustomBottleItem({super.key});

  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;
    return Container(
      margin: EdgeInsets.all(w * .02),
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
      child: Row(children: [
        SvgPicture.asset(AssetService.logo),
        const SizedBoxApp(
          w: .02,
        ),
        const Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DoneOrFinishRow(text: '2.5 ml',state: 'Finished',),
              Row(
                children: [
                  TimeWidget(
                    color: Color(0xFFA6A6A6),
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
