import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/widgets/custom_app_bar.dart';
import 'box_contact.dart';
import 'profile_widget.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeApp(context).height * 0.03,
        horizontal: SizeApp(context).width * 0.05,
      ),
      child: Column(
        children: [
          const CustomAppBar(),
          const SizedBoxApp(h: 0.02),
          const ProfileWidget(),
          const SizedBoxApp(h: 0.02),
          Container(
            width: double.infinity,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              shadows: const [
                BoxShadow(
                  color: Color(0x14000000),
                  blurRadius: 12,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: const BoxContact(),
          )
        ],
      ),
    );
  }
}


