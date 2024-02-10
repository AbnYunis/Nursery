import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nursery/core/utils/app_router.dart';
import 'package:nursery/core/utils/assets.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/mstyle.dart';
import 'package:nursery/core/utils/widgets/custom_button.dart';
import 'package:nursery/features/on_boarding/presentation/views/widgets/custom_slider_widget.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (currentIndex < 3) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }

      _pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }
  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final h = SizeApp(context).height;
    final w = SizeApp(context).width;
    return Stack(
      children: [
        PageView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Image.asset(
              AssetService.onBoard[currentIndex],
              width: w,
              height: h,
              fit: BoxFit.cover,
            );
          },
          onPageChanged: (int page) {
            setState(() {
              currentIndex = page;
            });
          },
          controller: _pageController,
        ),
        Padding(
          padding: EdgeInsets.all(w * .07),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBoxApp(
                h: .1,
              ),
               Text(
                'We bring parents closer and lets you focus on growing your childcare business.',
                style: MStyle.onBoardingStyle(w),
                textAlign: TextAlign.center,
              ),
             const Spacer(),
             CustomSliderWidget(currentIndex: currentIndex),
              const SizedBoxApp(
                h: .03,
              ),
              CustomButton(
                onPressed: () {
                  GoRouter.of(context).pushReplacement(AppRouter.login);
                },
                text: 'login',
              ),
            ],
          ),
        )
      ],
    );
  }
}
