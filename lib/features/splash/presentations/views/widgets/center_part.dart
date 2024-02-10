import 'package:flutter/material.dart';

import 'sliding_animation_image.dart';
import 'sliding_animation_text.dart';

class CenterPart extends StatelessWidget {
  const CenterPart({
    super.key,
    required this.slidingAnimationImage1,
    required this.slidingAnimationImage2,
    required this.slidingAnimationImage3,
    required this.slidingAnimationText1,
    required this.slidingAnimationText2,
  });

  final Animation<Offset> slidingAnimationImage1;
  final Animation<Offset> slidingAnimationImage2;
  final Animation<Offset> slidingAnimationImage3;
  final Animation<Offset> slidingAnimationText1;
  final Animation<Offset> slidingAnimationText2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRect(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SlidingAnimationImage(
                    slidingAnimationImage: slidingAnimationImage1,
                    image: 'first'),
                Transform.translate(
                  offset: const Offset(-20, 0),
                  child: SlidingAnimationImage(
                      slidingAnimationImage: slidingAnimationImage2,
                      image: 'second'),
                ),
                SlidingAnimationImage(
                    slidingAnimationImage: slidingAnimationImage3,
                    image: 'third'),
              ],
            ),
          ),
          SlideAnimatedText(
            slidingAnimation: slidingAnimationText1,bigText: true,
          ),
          SlideAnimatedText(
            slidingAnimation: slidingAnimationText2,bigText: false,
          ),
        ],
      ),
    );
  }
}
