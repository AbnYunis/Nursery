import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';
import 'package:nursery/core/utils/widgets/custom_app_bar.dart';
import 'package:nursery/features/activities/presentation/view/widgets/activities_grid_view.dart';

class ActivitiesBody extends StatelessWidget {
  const ActivitiesBody({super.key});

  @override
  Widget build(BuildContext context) {
    final h = SizeApp(context).height;
    final w = SizeApp(context).width;
    return Padding(
      padding:  EdgeInsets.only( top: SizeApp(context).height * 0.03,
        right: SizeApp(context).width * 0.05,
        left: SizeApp(context).width * 0.05,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: h * .02),
            child:  Text(
              'Select activity you want to see for malak',
              style: PStyle.style15W600(w,  const Color(0xFF1E1E1E)),
            ),
          ),
          const ActivitiesGridView(),
        ],
      ),
    );
  }
}
