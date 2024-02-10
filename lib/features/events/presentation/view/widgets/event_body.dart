import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/widgets/custom_app_bar.dart';
import 'package:nursery/core/utils/widgets/custom_tab_bar.dart';
import 'attendance_tab.dart';
import 'event_tab.dart';

class EventsBody extends StatelessWidget {
  const EventsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeApp(context).height * 0.03,
        horizontal: SizeApp(context).width * 0.05,
      ),
      child: const DefaultTabController(
        length: 2,
        child: Column(
          children: [
            CustomAppBar(),
            SizedBoxApp(h: 0.04),
            CustomTabBar(s1: "Events", s2: "Attendance"),
            Expanded(
                child: TabBarView(
              children: [
                EventTab(),
                AttendanceTab(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}




