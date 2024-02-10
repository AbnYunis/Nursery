import 'package:flutter/material.dart';
import 'package:nursery/core/utils/widgets/add_notes.dart';
import 'package:nursery/core/utils/widgets/back_row.dart';
import 'package:nursery/core/utils/widgets/custom_app_bar.dart';
import 'package:nursery/core/utils/widgets/custom_drop_down_menu.dart';
import '../../../../../core/utils/media_query.dart';
import 'custom_bottle_item.dart';

class BottleBody extends StatelessWidget {
  const BottleBody({super.key});

  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;
    return Padding(
      padding: EdgeInsets.all(w * .07),
      child: Column(
        children: [
          const CustomAppBar(),
          const BackRow(text: 'Bottle', date: true),
          const CustomDropDownMenu(),
          const SizedBoxApp(h: .02),
          const AddNotes(),
          Expanded(
            child: ListView.separated(
             
              itemBuilder: (context, index) {
                return const CustomBottleItem();
              },
              itemCount: 5,
              separatorBuilder: (BuildContext context, int index) {
                return Container();
              },
            ),
          ),
        ],
      ),
    );
  }
}
