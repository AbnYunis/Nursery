import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key, required this.s1, required this.s2,
  });
  final String s1;
  final String s2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeApp(context).height * 0.06,
      decoration: BoxDecoration(
        color: const Color(0xFF225B8B),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TabBar(
          padding: EdgeInsets.symmetric(
            horizontal: SizeApp(context).width * 0.02,
            vertical: SizeApp(context).height * 0.008,
          ),
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          dividerColor: Colors.transparent,
          labelColor: const Color(0xFF225B8B),
          unselectedLabelColor: Colors.white,
          tabs:  [
            Tab(
              text:s1,
            ),
            Tab(
              text: s2,
            )
          ]),

    );
  }
}
