import 'package:flutter/material.dart';
import 'package:nursery/features/early_leave/presentations/views/widgets/early_leave_body.dart';

class EarlyLeaveView extends StatelessWidget {
  const EarlyLeaveView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Scaffold(
        body: EarlyLeaveBody(),
      ),
    );
  }
}
