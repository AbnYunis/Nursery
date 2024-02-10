import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';

import '../../../../../core/utils/styles/p_style.dart';

class BoxContact extends StatelessWidget {
  const BoxContact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeApp(context).height * 0.02,
        horizontal: SizeApp(context).width * 0.04,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              'About Nursery',
              style: PStyle.style14W400(w, const Color(0xFF1E1E1E)),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text(
              'About Nursery',
              style: PStyle.style14W400(w, const Color(0xFF1E1E1E)),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text(
              'About Nursery',
              style: PStyle.style14W400(w, const Color(0xFF1E1E1E)),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text(
              'About Nursery',
              style: PStyle.style14W400(w, const Color(0xFF1E1E1E)),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            thickness: 2,
            indent: SizeApp(context).width * 0.035,
            endIndent: SizeApp(context).width * 0.07,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Logout',
              style: PStyle.style16W400(
                w,
                const Color(0xFFD32222),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
