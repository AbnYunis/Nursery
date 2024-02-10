import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/widgets/back_row.dart';
import 'package:nursery/core/utils/widgets/custom_app_bar.dart';
import 'package:nursery/core/utils/widgets/custom_button.dart';
import 'package:nursery/features/daily_report/presentations/views/widgets/daily_item.dart';

class DailyReportBody extends StatelessWidget {
  const DailyReportBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeApp(context).height * 0.03,
        horizontal: SizeApp(context).width * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const SizedBoxApp(h: 0.04),
          const BackRow(
            text: 'Daily Report for Malak',
            date: true,
          ),
          Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return DailyItem(
                    index: index,
                  );
                },
                itemCount: 7),
          ),
          CustomButton(
            onPressed: () {},
            text: 'Download Report',
            width: double.infinity,
          )
        ],
      ),
    );
  }
}

