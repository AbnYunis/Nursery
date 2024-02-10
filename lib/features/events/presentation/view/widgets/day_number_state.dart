import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';

class DaysNumberState extends StatelessWidget {
  const DaysNumberState({
    super.key,
    required this.color,
    required this.text,
  });

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    final w=SizeApp(context).width;

    return Container(
      padding: EdgeInsets.all(SizeApp(context).width * 0.04),
      decoration: ShapeDecoration(
        shape: CircleBorder(
          side: BorderSide(width: 2, color: color),
        ),
      ),
      child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: PStyle.style20W600(w, color)
          )),
    );
  }
}
