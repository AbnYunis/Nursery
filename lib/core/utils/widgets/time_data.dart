import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';

class TimeAndDate extends StatelessWidget {
  const TimeAndDate({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;
    return Row(
      children: [
        DateWidget(
          color: color,
        ),
        SizedBoxApp(w: w * .0001),
        TimeWidget(
          color: color,
        ),
      ],
    );
  }
}

class TimeWidget extends StatelessWidget {
  const TimeWidget({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;
    return Row(
      children: [
        Icon(
          Icons.watch_later,
          color: color,
        ),
        SizedBoxApp(w: w * .00002),
        Text('08:00 am', style: PStyle.style12W400(w, color)),
      ],
    );
  }
}

class DateWidget extends StatelessWidget {
  const DateWidget({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;
    return Row(
      children: [
        Icon(
          Icons.calendar_month,
          color: color,
        ),
        SizedBoxApp(w: w * .00002),
        Text('18 Feb 2023', style: PStyle.style12W400(w, color)),
      ],
    );
  }
}
