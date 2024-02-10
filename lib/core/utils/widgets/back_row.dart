import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';

class BackRow extends StatelessWidget {
  const BackRow({
    super.key,
    required this.text,
    required this.date,
  });

  final String text;
  final bool date;

  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;
    return Row(
      children: [
        Transform.translate(
          offset: Offset(-SizeApp(context).width * 0.03, 0),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
              ),
              Text(
                text,
                style: PStyle.style18W600(w, const Color(0xFF1E1E1E)),
              ),
            ],
          ),
        ),
        if (date) ...[
          const Spacer(),
          Text(
            DateFormat('dd MMM yyyy').format(DateTime.now()),
            style: PStyle.style14W400(w, const Color(0xFFBCBCBC)),
          ),
        ],
      ],
    );
  }
}
