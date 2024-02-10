import 'package:flutter/material.dart';
import 'package:nursery/features/daily_report/presentations/views/widgets/daily_report_body.dart';

class DailyReportView extends StatelessWidget {
  const DailyReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Scaffold(
        body: DailyReportBody(),
      ),
    );
  }
}
