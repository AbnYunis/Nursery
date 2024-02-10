import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';

import 'orange_part.dart';
import 'under_orange_part.dart';

class EventTab extends StatelessWidget {
  const EventTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(

      itemBuilder: (context, index) {
        return const Column(
          children: [
            OrangePart(),
            UnderOrangePart(),
          ],
        );
      },
      separatorBuilder: (context, index) =>const SizedBoxApp(
        h: 0.04,
      ),
      itemCount: 5,
      padding: EdgeInsets.symmetric(vertical:SizeApp(context).height*0.04,),
    );
  }
}
