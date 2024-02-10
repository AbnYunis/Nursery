import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';
import 'package:nursery/features/home/presentations/views/widgets/have_two_child.dart';

import 'calender_box.dart';
import 'day_number_state.dart';

class AttendanceTab extends StatelessWidget {
  const AttendanceTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final w=SizeApp(context).width;

    return  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBoxApp(h: 0.02),
          Text(
            'Please select your child that you want to see its attendance ',
            style: PStyle.style16W600(w, const Color(0xFF1E1E1E)),
          ),
          const SizedBoxApp(h: 0.01),
          const HaveTwoChild(),
          const SizedBoxApp(h: 0.02),
          const CalenderBox(),
          const SizedBoxApp(h: 0.03),
          Text(
            'Attendance summary',
            style: PStyle.style16W600(w, const Color(0xFF1E1E1E)),
          ),
          const SizedBoxApp(h: 0.03),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DaysNumberState(
                  text: '19 \ndays\nPresent',
                  color: Color(0xFF225B8B)),
              DaysNumberState(
                  text: '3 \ndays\nAbsent',
                  color: Color(0xFFD32222)),
              DaysNumberState(
                  text: '7 \ndays\nHoliday',
                  color: Color(0xFFFEA95C)),
            ],
          )
        ],
      ),
    );
  }
}
