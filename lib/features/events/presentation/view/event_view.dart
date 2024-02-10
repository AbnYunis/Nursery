import 'package:flutter/material.dart';
import 'package:nursery/features/events/presentation/view/widgets/event_body.dart';

class EventsView extends StatelessWidget {
  const EventsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: EventsBody(),
      ),
    );
  }
}
