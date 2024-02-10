import 'package:flutter/material.dart';
import 'package:nursery/features/medical/presentation/views/widgets/medical_body.dart';

class MedicalView extends StatelessWidget {
  const MedicalView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: MedicalBody(),
      ),
    );
  }
}
