import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';

class WhatChildDo extends StatelessWidget {
  const WhatChildDo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double w=SizeApp(context).width;
    double h=SizeApp(context).height;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(SizeApp(context).width*0.03),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 12,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Image.network(
              'https://th.bing.com/th/id/OIP.SSX9keQJyVVPEDL7QlFaywHaE7?rs=1&pid=ImgDetMain',
              width:w*0.3 ,
              height:h*0.15 ,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBoxApp(
            w: 0.03,
          ),
           Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: h*0.01),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Water color painting class',
                     style:PStyle.style18W500(w, Color(0xFF1E1E1E))
                  ),
                  Text(
                    '09:00 am - 10:00 am',
                      style:PStyle.style10W400(w, Color(0xFF1E1E1E))
                  ),
                  Text(
                    'Watercolor classes provide instruction and inspiration for those who want to learn about the medium.',
                      style:PStyle.style10W300(w, Color(0xFF807F7F))
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
