import 'package:flutter/material.dart';
import 'package:nursery/features/booking/presentation/view/widgets/booking_body.dart';

class BookingView extends StatelessWidget {
  const BookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: BookingBody(),
    ));
  }
}
