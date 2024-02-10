import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';

class OrangePart extends StatelessWidget {
  const OrangePart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: SizeApp(context).height * 0.06,
          color: const Color(0xFFFEA95C),
          child: Center(
            child: Text(
              '15 Jan 2023',
              style: PStyle.style16W500(w, Colors.white),
            ),
          ),
        ),
        Positioned(
          left: SizeApp(context).width * 0.06,
          top: -SizeApp(context).height * 0.015,
          child: Container(
            height: SizeApp(context).height * 0.04,
            width: SizeApp(context).width * 0.03,
            decoration: BoxDecoration(
                color: const Color(0xFFFEA95C),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 3)),
          ),
        ),
        Positioned(
          right: SizeApp(context).width * 0.06,
          top: -SizeApp(context).height * 0.015,
          child: Container(
            height: SizeApp(context).height * 0.04,
            width: SizeApp(context).width * 0.03,
            decoration: BoxDecoration(
                color: const Color(0xFFFEA95C),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 3)),
          ),
        ),
      ],
    );
  }
}
