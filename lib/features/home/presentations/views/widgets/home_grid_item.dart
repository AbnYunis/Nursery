import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nursery/core/utils/app_router.dart';
import 'package:nursery/core/utils/assets.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';

class HomeGridItem extends StatelessWidget {
  const HomeGridItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    double w=SizeApp(context).width;
    double h=SizeApp(context).height;
    List<String> text = [
      'Early leave request',
      'Emergency call',
      'Issue a complaint',
      'Booking request',
      'Who will take him',
      'Who will bring him'
    ];
    List routers=[AppRouter.earlyLeave,AppRouter.issue,AppRouter.booking];
    return GestureDetector(
      onTap: () {
        context.push(routers[index]);
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 12,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AssetService.homeGridIcon[index],height:h*0.04 ),
              const SizedBoxApp(h: 0.01,),
              SizedBox(
                width: w * 0.17,
                child: Text(
                  text[index],
                  textAlign: TextAlign.center,
                  style: PStyle.style12W500(w, Color(0xFF1E1E1E))
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
