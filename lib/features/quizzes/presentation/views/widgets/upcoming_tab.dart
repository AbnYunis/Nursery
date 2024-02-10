import 'package:flutter/material.dart';
import 'package:nursery/core/utils/widgets/custom_drop_down_menu.dart';
import 'package:nursery/features/quizzes/presentation/views/widgets/custom_upcoming_item.dart';

import '../../../../../core/utils/media_query.dart';

class UpcomingTab extends StatelessWidget {
  const UpcomingTab({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const CustomDropDownMenu(),
        const SizedBoxApp(
          h: .02,
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return const CustomUpcomingItem();
            },
            itemCount: 5,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBoxApp(
                h: .02,
              );
            },
          ),
        ),
      ],
    );
  }
}
