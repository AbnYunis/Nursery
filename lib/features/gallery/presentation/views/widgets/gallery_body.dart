import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/widgets/back_row.dart';
import 'package:nursery/core/utils/widgets/custom_app_bar.dart';
import 'package:nursery/features/gallery/presentation/views/widgets/custom_gallery_item.dart';

class GalleryBody extends StatelessWidget {
  const GalleryBody({super.key});

  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;
    return Padding(
      padding: EdgeInsets.all(w * .02),
      child: Column(
        children: [
          const CustomAppBar(),
          const BackRow(text: 'Gallery',date: false),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const CustomGalleryItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}

