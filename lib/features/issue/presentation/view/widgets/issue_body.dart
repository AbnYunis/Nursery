import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/widgets/back_row.dart';
import 'package:nursery/core/utils/widgets/custom_app_bar.dart';
import 'package:nursery/core/utils/widgets/custom_button.dart';
import 'package:nursery/core/utils/widgets/custom_text_form.dart';

class IssueBody extends StatelessWidget {
  const IssueBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeApp(context).height * 0.03,
        horizontal: SizeApp(context).width * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const SizedBoxApp(h: 0.02),
          const BackRow(text: 'Issue a complaint', date: false),
          const SizedBoxApp(h: 0.02),
          const Text(
            'Complaint Details',
            style: TextStyle(
              color: Color(0xFF1E1E1E),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          const SizedBoxApp(h: 0.02),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: SizeApp(context).height * 0.02,
              horizontal: SizeApp(context).width * 0.03,
            ),
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
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select complaint type',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBoxApp(h: 0.02),
                CustomTextForm(hText: 'Bus, Nursery, My Child'),
                SizedBoxApp(h: 0.02),
                CustomTextForm(hText: 'Reason of complaint', lines: 3),
              ],
            ),
          ),
          Spacer(),
          CustomButton(
            onPressed: () {},
            text: 'Confirm',
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
