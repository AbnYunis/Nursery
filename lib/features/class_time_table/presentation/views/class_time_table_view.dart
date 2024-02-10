import 'package:flutter/material.dart';

import 'widgets/class_time_table_body.dart';

class ClassTimeTableView extends StatelessWidget {
  const ClassTimeTableView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ClassTimeTableBody(),
      ),
    );
  }
}
