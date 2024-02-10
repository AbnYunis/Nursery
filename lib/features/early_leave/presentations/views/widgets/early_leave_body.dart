import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nursery/core/utils/app_router.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/widgets/back_row.dart';
import 'package:nursery/core/utils/widgets/custom_app_bar.dart';
import 'package:nursery/core/utils/widgets/custom_button.dart';
import 'package:nursery/features/early_leave/presentations/views/widgets/horizontal_calender.dart';
import 'early_leave_scroll_part.dart';

class EarlyLeaveBody extends StatelessWidget {
  const EarlyLeaveBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: SizeApp(context).height * 0.03,
        right: SizeApp(context).width * 0.05,
        left: SizeApp(context).width * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const SizedBoxApp(
            h: 0.04,
          ),
          const BackRow(text: 'Early leave request', date: false),
          const HorizontalCalendar(),
          const EarlyLeaveScrollPart(),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: SizeApp(context).height * 0.03),
            child: CustomButton(
                onPressed: () {
                  context.push(AppRouter.requestConfirm);
                },
                text: 'Send Request',
                width: double.infinity),
          )
        ],
      ),
    );
  }
}
