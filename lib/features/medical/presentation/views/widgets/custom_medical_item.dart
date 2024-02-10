import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nursery/core/utils/styles/p_style.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/media_query.dart';
import '../../../../../core/utils/widgets/done_finish_row.dart';

class CustomMedicalItem extends StatelessWidget {
  const CustomMedicalItem({super.key});

  @override
  Widget build(BuildContext context) {
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
          SvgPicture.asset(AssetService.logo),
          const SizedBoxApp(
            w: .02,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const DoneOrFinishRow(
                  text: '2.5 ml',
                  state: 'Finished',
                ),
                const SizedBoxApp(
                  h: .02,
                ),
                Text(
                  '1/2 bill',
                  style: PStyle.style12W400(w, const Color(0xFFA6A6A6)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
