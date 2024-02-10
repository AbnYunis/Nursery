import 'package:flutter/material.dart';

import '../../../../../core/utils/media_query.dart';
class CustomSliderWidget extends StatelessWidget {
  final int currentIndex;
  const CustomSliderWidget({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    final h = SizeApp(context).height;
    final w = SizeApp(context).width;
    return  SizedBox(
      height: h * .02,
      width: w*.25,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(w * .01),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            width: currentIndex == index ? w * .08 : w * .02,
            height: w * .02,
            decoration: ShapeDecoration(
              color:
              currentIndex == index ? Colors.white : Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(w * .03)),
            ),
          ),
        ),
      ),
    );
  }
}
