import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:nursery/core/utils/styles/jstyle.dart';

import '../media_query.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key,
    required this.hText,
    this.lines,
    this.validate,
    this.clickIcon,
  });

  final String hText;
  final int? lines;
  final String? Function(String?)? validate;
  final void Function()? clickIcon;

  @override
  Widget build(BuildContext context) {
    final w=SizeApp(context).width;
    final h=SizeApp(context).height;
    return SizedBox(
      height: h*0.05,
      child: TextFormField(
        validator: validate ??
            (value) {
              return null;
            },
        maxLines: lines ?? 1,
        decoration: InputDecoration(
          hintText: hText,
          suffixIcon: clickIcon != null
              ? IconButton(
                  onPressed: clickIcon ?? () {},
                  icon: const Icon(Iconsax.eye_slash_outline,),
                )
              : null,
          hintStyle:JStyles.style14W400(w, const Color(0xFFBCBCBC)),
          contentPadding: lines != null
              ? EdgeInsets.symmetric(
                  horizontal: SizeApp(context).width * .05,
                  vertical: SizeApp(context).height * .02)
              : EdgeInsets.symmetric(horizontal: SizeApp(context).width * .05),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(SizeApp(context).width * 0.025),
              borderSide: const BorderSide(color: Color(0xFFE5E1E5))),
        ),
      ),
    );
  }
}
