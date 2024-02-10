import 'package:flutter/material.dart';
import 'package:nursery/core/utils/styles/p_style.dart';
import 'package:nursery/core/utils/widgets/load_image.dart';
import 'package:nursery/core/utils/widgets/time_data.dart';

import '../../../../../core/utils/media_query.dart';
class CustomGalleryItem extends StatelessWidget {
  const CustomGalleryItem({super.key});

  @override
  Widget build(BuildContext context) {
    final h = SizeApp(context).height;
    final w = SizeApp(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: w * .05, vertical: h * .009),
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          const LoadImage(
            w: 1,
            h: 0.25,
            image:
            'https://th.bing.com/th/id/OIP.1Zg4V7WWy_z2hUQxRszlgwHaGH?w=223&h=189&c=7&r=0&o=5&dpr=1.3&pid=1.7',
          ),
          Padding(
            padding:  EdgeInsets.all(w*0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  'Annual Day',
                  style: PStyle.style16W700(w, Colors.white),
                ),
                SizedBoxApp(h: h*.00001,),
                const TimeAndDate(color: Colors.white,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


