import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nursery/core/utils/app_router.dart';
import 'package:nursery/core/utils/assets.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/widgets/custom_button.dart';

class RequestConfirmBody extends StatelessWidget {
  const RequestConfirmBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
        top: SizeApp(context).height * 0.03,
        right: SizeApp(context).width * 0.05,
        left: SizeApp(context).width * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              SvgPicture.asset(AssetService.logo,
                  width: SizeApp(context).width * 0.1),
              const SizedBoxApp(
                w: 0.02,
              ),
              const Text(
                'Rouse Berry',
                style: TextStyle(
                  color: Color(0xFF225B8B),
                  fontSize: 18,
                  fontFamily: 'Josefin Sans',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ],
          ),
          const SizedBoxApp(h: 0.1),
          SvgPicture.asset(AssetService.requestConfirm,),
          const SizedBoxApp(h: 0.05),
          const Text(
            'Request Confirmed',
            style: TextStyle(
              color: Color(0xFF1E1E1E),
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          const SizedBoxApp(h: 0.01),
          const Text(
            'Request has been sent successfully!',
            style: TextStyle(
              color: Color(0xFFA6A6A6),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          const Spacer(),
          CustomButton(
            onPressed: () {
              context.pushReplacement(AppRouter.home);
            },
            text: 'Back to home',
            width: double.infinity,
          ),
          const SizedBoxApp(h: 0.03),
        ],
      ),
    );
  }
}
