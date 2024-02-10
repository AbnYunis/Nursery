import 'package:flutter/material.dart';
import 'package:nursery/core/utils/widgets/add_notes.dart';
import 'package:nursery/core/utils/widgets/back_row.dart';
import 'package:nursery/core/utils/widgets/custom_app_bar.dart';
import 'package:nursery/core/utils/widgets/custom_drop_down_menu.dart';
import 'package:nursery/features/medical/presentation/views/widgets/custom_medical_item.dart';
import 'package:nursery/features/medical/presentation/views/widgets/row_item.dart';

import '../../../../../core/utils/media_query.dart';

class MedicalBody extends StatelessWidget {
  const MedicalBody({super.key});

  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;
    return Padding(
      padding: EdgeInsets.all(w * .07),
      child: Column(
        children: [
          const CustomAppBar(),
          const BackRow(
            text: 'Medical',
            date: true,
          ),
          const CustomDropDownMenu(),
          const SizedBoxApp(
            h: .02,
          ),
          const AddNotes(),
          const SizedBoxApp(
            h: .02,
          ),
          const RowItem(
            text: 'Morning',
            time: '10:30 am',
          ),
          const SizedBoxApp(
            h: .01,
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const CustomMedicalItem();
            },
            itemCount: 2,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBoxApp(
                h: .02,
              );
            },
          ),
          const SizedBoxApp(
            h: .02,
          ),
          const RowItem(text: 'Afternoon', time: '2:00 pm'),
          const SizedBoxApp(
            h: .01,
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const CustomMedicalItem();
            },
            itemCount: 2,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBoxApp(
                h: .02,
              );
            },
          ),
        ],
      ),
    );
  }
}
