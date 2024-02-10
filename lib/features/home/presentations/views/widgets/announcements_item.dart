import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nursery/core/utils/assets.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';
import 'package:nursery/core/utils/widgets/time_data.dart';

class AnnouncementsItem extends StatelessWidget {
  const AnnouncementsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double w=SizeApp(context).width;
    return Container(
      height: SizeApp(context).height * 0.1,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)),
        shadows: const [
          BoxShadow(
            color: Color(0x1E000000),
            blurRadius: 12,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      padding: EdgeInsets.all(SizeApp(context).width*0.03),
      child: Row(
        children: [
          SvgPicture.asset(AssetService.logo),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Next parenting meeting',
                style: PStyle.style14W500(w,const Color(0xFF1E1E1E))
              ),
             const TimeAndDate(color: Color(0xFFA6A6A6))
            ],
          ),
        ],
      ),
    );
  }
}
