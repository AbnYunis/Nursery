import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/widgets/time_data.dart';

import '../../../../../core/utils/styles/p_style.dart';

class UnderOrangePart extends StatelessWidget {
  const UnderOrangePart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;

    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        SizedBox(
          width: double.infinity,
          height: SizeApp(context).height * 0.24,
          child: Image.network(
            'https://th.bing.com/th/id/OIP.6JA64aOi1t9pb6vw4gNUXAHaDt?w=349&h=175&c=7&r=0&o=5&dpr=1.3&pid=1.7',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(SizeApp(context).width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Annual Day',
                style:
                    PStyle.style18W700(w, Colors.white).copyWith(height: .07),
              ),
              const SizedBoxApp(h: 0.02),
              Text(
                'Establish a medium for seamless parent teacher communication, help parents and teachers collaborate and communicate efficiently',
                style: PStyle.style12W400(w, Colors.white),
              ),
              const SizedBoxApp(h: 0.02),
              Row(
                children: [
                  const TimeAndDate(color: Colors.white),
                  Text(
                    ' - 02:30 pm',
                    style: PStyle.style12W400(w, Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
