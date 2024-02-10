import 'package:flutter/material.dart';

import 'widgets/bottle_body.dart';

class BottleView extends StatelessWidget {
  const BottleView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: BottleBody(),
      ),
    );
  }
}


