import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';
import 'package:nursery/core/utils/widgets/custom_container.dart';
import 'package:nursery/core/utils/widgets/custom_text_form.dart';

class ChildData extends StatelessWidget {
  const ChildData({super.key});

  @override
  Widget build(BuildContext context) {
    double w=SizeApp(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Child Data',style: PStyle.style14W400(w,  const Color(0xFF1E1E1E)),),
        const SizedBoxApp(
          h: 0.02,
        ),
        CustomContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Child name',style: PStyle.style14W500(w, const Color(0xFF333333)),),
              const SizedBoxApp(h: 0.01,),
              const CustomTextForm(hText: 'Enter child name',),
              const SizedBoxApp(h: 0.01,),
              Text('Child age',style: PStyle.style14W500(w, const Color(0xFF333333)),),
              const SizedBoxApp(h: 0.01,),
              const CustomTextForm(hText: 'Enter child age',),
            ],
          ),
        ),
      ],
    );
  }
}
