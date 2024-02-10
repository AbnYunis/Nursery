import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';

import '../../../../../core/utils/widgets/custom_drop_down_menu.dart';
import 'custom_passed_item.dart';
class PassedTab extends StatelessWidget {
  const PassedTab({super.key});

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
              return const CustomPassedItem();
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
