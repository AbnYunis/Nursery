import 'package:flutter/material.dart';
import 'package:nursery/core/utils/styles/p_style.dart';

import '../../../../../core/utils/media_query.dart';
import '../../../../../core/utils/widgets/time_data.dart';

class CustomClassTableItem extends StatelessWidget {
  const CustomClassTableItem({super.key});

  @override
  Widget build(BuildContext context) {
    final h = SizeApp(context).height;
    final w = SizeApp(context).width;
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => SizedBox(
        height: h * .07,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'English',
                  style: PStyle.style14W500(w, const Color(0xFF1E1E1E)),
                ),
                const TimeWidget(color: Color(0xFF225B8B)),
              ],
            ),
            const Spacer(),
            Text(
              'Class : 6',
              style: PStyle.style12W400(w, const Color(0xFFA6A6A6)),
            )
          ],
        ),
      ),
      separatorBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: w * .02, vertical: h * .01),
          child: Container(
            height: 1,
            color: const Color(0xFFE5E1E5),
          ),
        );
      },
      itemCount: 3,
    );
  }
}
