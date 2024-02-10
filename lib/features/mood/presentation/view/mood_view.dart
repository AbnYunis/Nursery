import 'package:flutter/material.dart';
import 'package:nursery/features/mood/presentation/view/widgets/mood_body.dart';
class MoodView extends StatelessWidget {
  const MoodView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: MoodBody(),
    ));
  }
}
