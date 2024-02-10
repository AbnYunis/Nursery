import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/widgets/custom_app_bar.dart';
import 'scroll_widgets.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    int cases = 2;
    return Padding(
      padding: EdgeInsets.only(
        top: SizeApp(context).height * 0.03,
        right: SizeApp(context).width * 0.05,
        left: SizeApp(context).width * 0.05,
      ),
      child: Column(
        children: [
          const CustomAppBar(),
          ScrollingWidgets(cases: cases),
        ],
      ),
    );
  }
}



