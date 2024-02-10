import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';

import 'home_grid_item.dart';

class HomeGrid extends StatelessWidget {
  const HomeGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: SizeApp(context).width*0.02),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: SizeApp(context).width * 0.03,
        mainAxisSpacing: SizeApp(context).height * 0.02,
      ),
      itemCount: 6,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return HomeGridItem(index: index);
      },
    );
  }
}
