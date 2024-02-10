import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/jstyle.dart';

class SlideAnimatedText extends StatelessWidget {
  const SlideAnimatedText({
    super.key,
    required this.slidingAnimation,
    required this.bigText,
  });

  final Animation<Offset> slidingAnimation;
  final bool bigText;

  @override
  Widget build(BuildContext context) {
    final h = SizeApp(context).height;
    final w = SizeApp(context).width;
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: bigText
                ? Text(
                    'Rouse Berry',
                    style: JStyles.splashStyle(w),
                    softWrap: true,
                    textAlign: TextAlign.center,
                  )
                : Text(
                    'Your child is save with us',
                    style: JStyles.style12W400(
                      w,
                      const Color(0xFFA6A6A6),
                    ).copyWith(letterSpacing: .96),
                  ),
          );
        });
  }
}
