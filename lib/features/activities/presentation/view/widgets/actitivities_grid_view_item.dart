import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nursery/core/utils/app_router.dart';
import 'package:nursery/core/utils/assets.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';

class ActivitiesGridViewItem extends StatelessWidget {
  const ActivitiesGridViewItem(
      {super.key, required this.text, required this.index});

  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    List<String> clicks = [
      AppRouter.food,
      AppRouter.classTimeTable,
      AppRouter.medical,
      AppRouter.nap,
      AppRouter.bottle,
      AppRouter.mood,
      AppRouter.potty,
      AppRouter.diaper,
      AppRouter.homeWork,
      AppRouter.quizzes,
    ];
    final h = SizeApp(context).height;
    final w = SizeApp(context).width;
    return GestureDetector(
      onTap: () => context.push(clicks[index]),
      child: Container(
        width: w * .03,
        height: h * .01,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(w * .02)),
          shadows: const [
            BoxShadow(
              color: Color(0x1E000000),
              blurRadius: 12,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AssetService.activities[index]),
            SizedBoxApp(h: h * .00002),
            Text(
              text,
              style: PStyle.style14W500(w, const Color(0xFF225B8B)),
            ),
          ],
        ),
      ),
    );
  }
}
