import 'package:flutter/material.dart';
import 'package:nursery/core/utils/styles/p_style.dart';

import '../../../../../core/utils/media_query.dart';

class ContainerItems extends StatelessWidget {
  const ContainerItems({super.key, required this.items});

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    final h = SizeApp(context).height;
    final w = SizeApp(context).width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: w * .05,vertical: h*0.02),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadows: const [
          BoxShadow(
            color: Color(0x1E000000),
            blurRadius: 12,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: h * .01),
          child: Row(
            children: [
              Icon(
                Icons.brightness_1,
                size: w * .015,
              ),
              const SizedBoxApp(
                w: .01,
              ),
              Text(
                items[index],
                style: PStyle.style16W500(w, const Color(0xFF1E1E1E)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
