import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';

import 'day_state.dart';
import 'table_calender.dart';

class CalenderBox extends StatelessWidget {
  const CalenderBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          bottom: SizeApp(context).height * 0.025),
      color: const Color(0xFFF7F7F7),
      child: Column(
        children: [
          const TablesCalender(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeApp(context).width * 0.045),
            child: Divider(
              height: SizeApp(context).height * 0.04,
              thickness: 2,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeApp(context).width * 0.045),
            child: const Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                DayState(
                  color: Color(0xFF225B8B),
                  text: 'Present',
                ),
                DayState(
                  color: Color(0xFFD32222),
                  text: 'Absent',
                ),
                DayState(
                  color: Color(0xFFFEA95C),
                  text: 'Holiday',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
