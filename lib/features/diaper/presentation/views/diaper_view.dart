import 'package:flutter/material.dart';
import 'package:nursery/features/diaper/presentation/views/widgets/diaper_body.dart';

class DiaperView extends StatelessWidget {
  const DiaperView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: DiaperBody(),
      ),
    );
  }
}
