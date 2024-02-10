import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nursery/core/utils/assets.dart';
import 'package:nursery/core/utils/media_query.dart';

class StarImageAnimation extends StatelessWidget {
  const StarImageAnimation({
    super.key,
    required this.starOpacityAnimation, required this.right, required this.top, this.isRotate,
  });

  final Animation<double> starOpacityAnimation;
  final double right;
  final double top;
  final bool? isRotate;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation:starOpacityAnimation,
        builder: (context,_) {
          return Positioned(
            right: SizeApp(context).width*right ,
            top:  SizeApp(context).height*top,
            child: Opacity(
              opacity: starOpacityAnimation.value,
              child: isRotate??false?Transform.rotate(
                angle:  pi,
                child: Transform(
                  transform: Matrix4.identity()..scale(-1.0, 1.0, 1.0),
                  child: SvgPicture.asset(
                    AssetService.splash['star']!,
                  ),
                ),
              ):SvgPicture.asset(
                AssetService.splash['star']!,
              ),
            ),
          );
        }
    );
  }
}
