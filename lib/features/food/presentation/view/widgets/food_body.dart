import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/widgets/add_notes.dart';
import 'package:nursery/core/utils/widgets/back_row.dart';
import 'package:nursery/core/utils/widgets/custom_app_bar.dart';
import 'package:nursery/core/utils/widgets/custom_drop_down_menu.dart';
import 'item_of_day.dart';

class FoodBody extends StatelessWidget {
  const FoodBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeApp(context).height * 0.03,
        horizontal: SizeApp(context).width * 0.05,
      ),
      child: Column(
        children: [
          const CustomAppBar(),
          const SizedBoxApp(
            h: 0.02,
          ),
          const BackRow(text: 'Food', date: false),
          const SizedBoxApp(
            h: 0.01,
          ),
          const CustomDropDownMenu(),
          const SizedBoxApp(
            h: 0.01,
          ),
          const AddNotes(),
          const SizedBoxApp(
            h: 0.01,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return const ItemOfDay();
                },
                separatorBuilder: (context, index) => const SizedBoxApp(
                      h: 0.04,
                    ),
                itemCount: 7),
          )
        ],
      ),
    );
  }
}
