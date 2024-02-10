import 'package:flutter/material.dart';
import 'package:nursery/features/diaper/presentation/views/widgets/potty_body.dart';

class PottyView extends StatelessWidget {
  const PottyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: PottyBody(),
      ),

    );
  }
}
