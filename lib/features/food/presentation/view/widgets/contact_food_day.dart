import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nursery/core/utils/assets.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';
import 'package:nursery/core/utils/widgets/time_data.dart';

class ContactDayFood extends StatelessWidget {
  const ContactDayFood({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(AssetService.logo),
        const SizedBoxApp(
          w: 0.01,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Breakfast',
                    style: PStyle.style16W500(w, const Color(0xFF1E1E1E)),
                  ),
                  const Spacer(),
                  const TimeWidget(color: Color(0xFF225B8B)),
                ],
              ),
              Text(
                'Egg and Toast with butter and jam',
                style: PStyle.style12W400(w, const Color(0xFFA6A6A6)),
              ),
              const SizedBoxApp(
                h: 0.01,
              ),
              Image.network(
                'https://th.bing.com/th/id/OIP.JbK3CNRtBsEEP5K8RLRJyAHaE8?w=297&h=198&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                width: double.infinity,
                height: SizeApp(context).height * 0.1,
                fit: BoxFit.cover,
              )
            ],
          ),
        )
      ],
    );
  }
}
