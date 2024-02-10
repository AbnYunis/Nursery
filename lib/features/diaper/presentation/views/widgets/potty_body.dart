import 'package:flutter/material.dart';
import 'package:nursery/core/utils/assets.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/widgets/back_row.dart';
import 'package:nursery/core/utils/widgets/custom_app_bar.dart';
import 'package:nursery/features/diaper/presentation/views/widgets/container_items.dart';
import 'package:nursery/features/diaper/presentation/views/widgets/custom_diaper_item.dart';
import 'package:nursery/features/diaper/presentation/views/widgets/potty_list_view.dart';

class PottyBody extends StatelessWidget {
  const PottyBody({super.key});

  @override
  Widget build(BuildContext context) {
    final h = SizeApp(context).height;
    final w = SizeApp(context).width;
    return Padding(
      padding: EdgeInsets.all(w * .07),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          BackRow(text: 'Potty', date: true),
          CustomDiaperItem(text: 'Pee'),
          SizedBoxApp(
            h: .025,
          ),
          Expanded(
            child: PottyListView(),
          ),
        ],
      ),
    );
  }
}
