import 'package:flutter/material.dart';
import 'package:nursery/features/home_work/presentation/view/widgets/home_work_body.dart';

class HomeWorkView extends StatelessWidget {
  const HomeWorkView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: HomeWorkBody(),
    ));
  }
}
