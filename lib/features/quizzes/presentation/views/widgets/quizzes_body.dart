import 'package:flutter/material.dart';
import 'package:nursery/core/utils/widgets/back_row.dart';
import 'package:nursery/core/utils/widgets/custom_app_bar.dart';
import 'package:nursery/core/utils/widgets/custom_tab_bar.dart';
import 'package:nursery/features/quizzes/presentation/views/widgets/passed_tab.dart';
import 'package:nursery/features/quizzes/presentation/views/widgets/upcoming_tab.dart';

import '../../../../../core/utils/media_query.dart';

class QuizzedBody extends StatelessWidget {
  const QuizzedBody({super.key});

  @override
  Widget build(BuildContext context) {
    final h = SizeApp(context).height;
    final w = SizeApp(context).width;
    return Padding(
      padding: EdgeInsets.all(w * .07),
      child: const DefaultTabController(
        length: 2,
        child: Column(
          children: [
            CustomAppBar(),
            BackRow(text: 'Quizzes', date: true),
            CustomTabBar(s1: 'Upcoming', s2: 'passed'),
            SizedBoxApp(h: .02,),
            Expanded(
              child: TabBarView(children: [
                UpcomingTab(),
                PassedTab(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
