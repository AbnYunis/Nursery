import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nursery/core/utils/assets.dart';

class SlidingAnimationImage extends StatelessWidget {
  const SlidingAnimationImage({
    super.key,
    required this.slidingAnimationImage, required this.image,
  });

  final Animation<Offset> slidingAnimationImage;
  final String image;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation:slidingAnimationImage,
        builder: (context,_) {
          return SlideTransition(
              position: slidingAnimationImage,
              child:SvgPicture.asset(AssetService.splash[image]!)
          );
        }
    );
  }
}
