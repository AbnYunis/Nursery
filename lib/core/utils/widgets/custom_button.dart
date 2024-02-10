import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final double? width;

  const CustomButton(
      {super.key, required this.onPressed, required this.text, this.width});

  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;
    final h = SizeApp(context).height;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width ?? w * .85,
        height: h * .05,
        decoration: ShapeDecoration(
          color: const Color(0xFF225B8B),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(w * .02)),
        ),
        child: Center(
            child: Text(
          text,
          style: PStyle.style14W400(w, Colors.white),
        )),
      ),
    );
  }
}
