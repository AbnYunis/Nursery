import 'package:flutter/material.dart';
import 'package:nursery/core/utils/widgets/back_row.dart';
import 'package:nursery/core/utils/widgets/custom_app_bar.dart';
import 'package:nursery/features/diaper/presentation/views/widgets/custom_diaper_item.dart';

import '../../../../../core/utils/media_query.dart';
import 'container_items.dart';

class DiaperBody extends StatelessWidget {
  const DiaperBody({super.key});

  @override
  Widget build(BuildContext context) {
    final h = SizeApp(context).height;
    final w = SizeApp(context).width;
    return Padding(
      padding: EdgeInsets.all(w * .07),
      child: const Column(
        children: [
          CustomAppBar(),
          BackRow(
            text: 'Diaper',
            date: true,
          ),
          CustomDiaperItem(
            text: '2 Wet',
          ),
          SizedBoxApp(
            h: .02,
          ),
          CustomDiaperItem(
            text: '1 Dirty',
          ),
          SizedBoxApp(
            h: .02,
          ),
          ContainerItems(
            items: [
              'Diaper is leak',
              'Diaper is cream',
              'Quantity: Medium',
            ],
          ),
        ],
      ),
    );
  }
}
