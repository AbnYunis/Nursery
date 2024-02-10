import 'package:flutter/cupertino.dart';
import 'package:nursery/core/utils/styles/p_style.dart';

import '../../../../../core/utils/media_query.dart';

class TextsWidget extends StatelessWidget {
  const TextsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Mathematics',
            style: PStyle.style15W500(w, const Color(0xFF1E1E1E))),
        Text(
          'You have passed the quiz',
          style: PStyle.style12W400(w, const Color(0xFF32A048)),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '13 / 15',
                style: PStyle.style12W500(w, const Color(0xFF32A048)),
              ),
              TextSpan(
                text: ' Questions',
                style: PStyle.style12W400(w, const Color(0xFFA6A6A6)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
