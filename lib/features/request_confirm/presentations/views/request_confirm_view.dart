import 'package:flutter/material.dart';
import 'package:nursery/features/request_confirm/presentations/views/widgets/request_confirm_body.dart';

class RequestConfirmView extends StatelessWidget {
  const RequestConfirmView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: RequestConfirmBody(),
    ));
  }
}
