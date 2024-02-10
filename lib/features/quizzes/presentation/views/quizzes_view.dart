import 'package:flutter/material.dart';
import 'package:nursery/features/quizzes/presentation/views/widgets/quizzes_body.dart';

class QuizzesView extends StatelessWidget {
  const QuizzesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: QuizzedBody(),
      ),
    );
  }
}
