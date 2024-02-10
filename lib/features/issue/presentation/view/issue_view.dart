import 'package:flutter/material.dart';
import 'package:nursery/features/issue/presentation/view/widgets/issue_body.dart';

class IssueView extends StatelessWidget {
  const IssueView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: IssueBody(),
    ));
  }
}
