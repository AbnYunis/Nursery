import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';

import 'announcements_item.dart';

class AnnouncementsList extends StatelessWidget {
  const AnnouncementsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.only(
            top: SizeApp(context).height * 0.02,
            bottom: SizeApp(context).height * 0.08),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const AnnouncementsItem(),
        separatorBuilder: (context, index) => const SizedBoxApp(
          h: 0.02,
        ),
        itemCount: 4);
  }
}
