import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';

class ChooseChildRow extends StatelessWidget {
  const ChooseChildRow({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    double w=SizeApp(context).width;
    return  Row(
      children: [
         Text(
          'Please select your child',
          style: PStyle.style16W600(w, const Color(0xFF1E1E1E))
        ),
        const Spacer(),
        Text(
          DateFormat('dd MMM yyyy').format( DateTime.now()),
          style: PStyle.style14W400(w, const Color(0xFF1E1E1E))
        )
      ],
    );
  }
}
