import 'package:flutter/material.dart';
import 'package:nursery/features/nap/presentation/view/widgets/nap_body.dart';

class NapView extends StatelessWidget {
  const NapView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: NapBody(),
    ));
  }
}
