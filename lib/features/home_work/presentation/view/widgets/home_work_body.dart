import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/widgets/back_row.dart';
import 'package:nursery/core/utils/widgets/custom_app_bar.dart';
import 'package:nursery/core/utils/widgets/custom_tab_bar.dart';
import 'package:nursery/features/home_work/presentation/view/widgets/upcoming_passed_tab.dart';

class HomeWorkBody extends StatelessWidget {
  const HomeWorkBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Padding(
        padding:  EdgeInsets.symmetric(
          vertical: SizeApp(context).height * 0.03,
          horizontal: SizeApp(context).width * 0.05,
        ),
        child: const Column(
          children: [
            CustomAppBar(),
            SizedBoxApp(h:0.02),
            BackRow(text: 'Homework', date: true),
            SizedBoxApp(h:0.01),
            CustomTabBar(s1: 'Upcoming', s2: 'Passed'),
            Expanded(
              child: TabBarView(
                children: [
                  UpcomingPassedTab(rightTab: false),
                  UpcomingPassedTab(rightTab: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

