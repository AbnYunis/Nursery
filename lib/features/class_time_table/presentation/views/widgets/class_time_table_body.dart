import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';
import 'package:nursery/core/utils/widgets/back_row.dart';
import 'package:nursery/core/utils/widgets/custom_app_bar.dart';
import 'package:nursery/features/class_time_table/presentation/views/widgets/custom_class_table_item.dart';

import '../../../../../core/utils/widgets/custom_drop_down_menu.dart';

class ClassTimeTableBody extends StatelessWidget {
  const ClassTimeTableBody({super.key});

  @override
  Widget build(BuildContext context) {
    final h = SizeApp(context).height;
    final w = SizeApp(context).width;
    return Padding(
      padding: EdgeInsets.all(w * .07),
      child: Column(
        children: [
          const CustomAppBar(),
          const BackRow(text: 'Class Time Table', date: false),
          const CustomDropDownMenu(),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: h * .007),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(
                        '04 Feb 2023 (Sunday)',
                        style: PStyle.style14W400(w, const Color(0xFF1E1E1E)),

                      ),
                      SizedBoxApp(
                        h: h * .00002,
                      ),
                      Container(
                        padding: EdgeInsets.all(w * .025),
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
                            ),
                          ],
                        ),
                        child: const CustomClassTableItem(),),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
