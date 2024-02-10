import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/widgets/back_row.dart';
import 'package:nursery/core/utils/widgets/custom_app_bar.dart';
import 'package:nursery/core/utils/widgets/custom_drop_down_menu.dart';
import 'package:nursery/features/nap/presentation/view/widgets/nap_item.dart';

class NapBody extends StatelessWidget {
  const NapBody({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeApp(context).height * 0.03,
        horizontal: SizeApp(context).width * 0.05,
      ),
      child:  Column(
        children: [
          const CustomAppBar(),
          const SizedBoxApp(h: 0.02),
          const BackRow(text: 'Nap', date: true),
          const SizedBoxApp(h: 0.01),
          const CustomDropDownMenu(),
          const SizedBoxApp(h: 0.01),
          Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return NapItem(index: index);
                },
                itemCount: 3),
          ),
        ],
      ),
    );
  }
}
