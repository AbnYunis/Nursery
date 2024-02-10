import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';


class HorizontalList extends StatelessWidget {
  const HorizontalList({
    super.key, required this.itemBuilder, required this.length, this.height,
  });
final Widget itemBuilder;
final int length;
final double? height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeApp(context).height * (height??0.15),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>itemBuilder,
        itemCount: length,
        separatorBuilder: (context, index) => const SizedBoxApp(
          w: 0.05,
        ),
      ),
    );
  }
}
