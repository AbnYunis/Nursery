import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';

import 'contact_food_day.dart';

class ItemOfDay extends StatelessWidget {
  const ItemOfDay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final w=SizeApp(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          '19 Feb 2023 (Sunday)',
          style: PStyle.style14W400(w, const Color(0xFF1E1E1E)),
        ),
        const SizedBoxApp(h: 0.01,),
        Container(
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
          child: ListView.separated(
              padding: EdgeInsets.symmetric(
                vertical: SizeApp(context).height*0.03,
                horizontal: SizeApp(context).width*0.04,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return const ContactDayFood();
              },
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 2,
                  height: SizeApp(context).height*0.05,
                );
              },
              itemCount: 3),
        )
      ],
    );
  }
}
