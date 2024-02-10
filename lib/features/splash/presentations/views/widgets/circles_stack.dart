import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/widgets/custom_clip_path.dart';

class CirclesStack extends StatelessWidget {
  const CirclesStack({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: CustomClipPath(context: context,h: 0.93,w: 0.23,r: 0.43),
          child: Container(
            width: SizeApp(context).width,
            height: SizeApp(context).height,
            color: const Color(0xFF8AC9FE).withOpacity(0.3),
          ),
        ),
        ClipPath(
          clipper: CustomClipPath(context: context,h: 0.97,w: 0.8,r: 0.33),
          child: Container(
            width: SizeApp(context).width,
            height: SizeApp(context).height,
            color: const Color(0xFFF6A7D2).withOpacity(0.3),
          ),
        ),
        ClipPath(
          clipper: CustomClipPath(context: context,h: 0.975,w: 0.55,r: 0.23),
          child: Container(
            width: SizeApp(context).width,
            height: SizeApp(context).height,
            color: const Color(0xFFFEA95C).withOpacity(0.3),
          ),
        ),
      ],
    );
  }
}
