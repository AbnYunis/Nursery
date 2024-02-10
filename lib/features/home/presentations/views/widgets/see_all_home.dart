import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nursery/core/utils/app_router.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';

class SeeAllHome extends StatelessWidget {
  const SeeAllHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double w=SizeApp(context).width;
    return Row(
      children: [
         Text(
          'Gallery',
            style:PStyle.style16W600(w, Color(0xFF1E1E1E))
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            context.push(AppRouter.gallery);
          },
          child:  Text(
            'See all',
              style:PStyle.style14W400(w, Color(0xFF1E1E1E))
          ),
        ),
      ],
    );
  }
}
