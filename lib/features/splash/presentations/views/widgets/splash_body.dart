import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nursery/core/utils/app_router.dart';
import 'package:nursery/features/splash/presentations/views/widgets/circles_stack.dart';
import 'package:nursery/features/splash/presentations/views/widgets/star_image_animation.dart';

import 'center_part.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with TickerProviderStateMixin {
  late AnimationController textAnimationController, imageAnimationController;
  late Animation<Offset> slidingAnimationText1,
      slidingAnimationText2,
      slidingAnimationImage1,
      slidingAnimationImage2,
      slidingAnimationStack,
      slidingAnimationImage3;
  late Animation<double> starOpacityAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    textAnimationController.dispose();
    imageAnimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CenterPart(
          slidingAnimationImage1: slidingAnimationImage1,
          slidingAnimationImage2: slidingAnimationImage2,
          slidingAnimationImage3: slidingAnimationImage3,
          slidingAnimationText1: slidingAnimationText1,
          slidingAnimationText2: slidingAnimationText2,
        ),
        StarImageAnimation(
          starOpacityAnimation: starOpacityAnimation,
          top: 0.08,
          right: 0.75,
        ),
        StarImageAnimation(
          starOpacityAnimation: starOpacityAnimation,
          right: 0.25,
          top: 0.2,
          isRotate: true,
        ),
        SlideTransition(
          position: slidingAnimationStack,
          child:const CirclesStack(),
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    textAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    imageAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));

    slidingAnimationText1 =
        Tween<Offset>(begin: const Offset(-3, 0), end: Offset.zero).animate(
            CurvedAnimation(
                parent: textAnimationController, curve: Curves.bounceIn));

    slidingAnimationText2 =
        Tween<Offset>(begin: const Offset(3, 0), end: Offset.zero).animate(
            CurvedAnimation(
                parent: textAnimationController, curve: Curves.easeIn));

    slidingAnimationImage1 =
        Tween<Offset>(begin: const Offset(0, -3), end: Offset.zero).animate(
            CurvedAnimation(
                parent: imageAnimationController, curve: Curves.easeOut));
    slidingAnimationImage2 =
        Tween<Offset>(begin: const Offset(-3, 0), end: Offset.zero).animate(
            CurvedAnimation(
                parent: imageAnimationController, curve: Curves.easeOut));
    slidingAnimationImage3 =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero).animate(
            CurvedAnimation(
                parent: imageAnimationController, curve: Curves.easeOut));
    slidingAnimationStack = Tween<Offset>(begin: const Offset(0, 0.7), end: Offset.zero)
        .animate(CurvedAnimation(
            parent: imageAnimationController, curve: Curves.easeOut));
    starOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: imageAnimationController,
        curve: const Interval(0.9, 1.0), // Adjust the interval as needed
      ),
    );

    textAnimationController.forward();

    Future.delayed(const Duration(milliseconds: 1300), () {
      imageAnimationController.forward();
    });
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(milliseconds: 3500),
      () {
        GoRouter.of(context).go(AppRouter.onBoarding);
      },
    );
  }
}
