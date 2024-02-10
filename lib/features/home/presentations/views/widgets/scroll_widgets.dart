import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nursery/core/utils/app_router.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';
import 'package:nursery/core/utils/widgets/custom_button.dart';
import 'package:nursery/core/utils/widgets/load_image.dart';
import 'announcements_list.dart';
import 'choose_child_row.dart';
import 'horizontal_list.dart';
import 'have_two_child.dart';
import 'home_grid.dart';
import 'see_all_home.dart';
import 'what_child_do.dart';
import '../../../../../core/utils/widgets/your_child_image.dart';

class ScrollingWidgets extends StatelessWidget {
  const ScrollingWidgets({
    super.key,
    required this.cases,
  });

  final int cases;

  @override
  Widget build(BuildContext context) {
    double w = SizeApp(context).width;
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBoxApp(h: 0.04),
            const ChooseChildRow(),
            const SizedBoxApp(h: 0.02),
            if (cases == 1) ...[const YourChildWidget(value: 1,isSelected: 1,)],
            if (cases == 2) ...[const HaveTwoChild()],
            if (cases > 2) ...[
              HorizontalList(
                itemBuilder: YourChildWidget(width: w * 0.35,value: 1,isSelected: 2),
                length: 4,
              )
            ],
            const SizedBoxApp(h: 0.02),
            Text('What’s Malak doing now?',
                style: PStyle.style16W600(w, const Color(0xFF1E1E1E))),
            const SizedBoxApp(h: 0.01),
            const WhatChildDo(),
            const SizedBoxApp(h: 0.02),
            CustomButton(
              onPressed: () {
                context.push(AppRouter.dailyReport);
              },
              text: 'View daily report',
              width: double.infinity,
            ),
            const SizedBoxApp(h: 0.02),
            const HomeGrid(),
            const SeeAllHome(),
            const HorizontalList(
              height: 0.12,
              itemBuilder: LoadImage(
                w: 0.25,
                h: 0.12,
                image:
                    'https://th.bing.com/th/id/OIP.1Zg4V7WWy_z2hUQxRszlgwHaGH?w=223&h=189&c=7&r=0&o=5&dpr=1.3&pid=1.7',
              ),
              length: 8,
            ),
            const SizedBoxApp(
              h: 0.02,
            ),
            Text('Announcements',
                style: PStyle.style16W600(w, const Color(0xFF1E1E1E))),
            const AnnouncementsList()
          ],
        ),
      ),
    );
  }
}
