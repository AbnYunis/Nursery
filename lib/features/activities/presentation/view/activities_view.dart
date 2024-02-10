import 'package:flutter/material.dart';
import 'package:nursery/features/activities/presentation/view/widgets/activities_body.dart';

class ActivitiesView extends StatelessWidget {
  const ActivitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ActivitiesBody(),
        //bottomNavigationBar: CustomBNB(),
      ),
    );
  }
}
