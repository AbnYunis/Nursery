import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';

class DropDownField extends StatelessWidget {
  const DropDownField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              horizontal: SizeApp(context).width * .05),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                  SizeApp(context).width * 0.025),
              borderSide:
              const BorderSide(color: Color(0xFFE5E1E5))),
        ),
        value: "0",
        items: [
          DropdownMenuItem(
            child: Text('1'),
            value: "0",
          ),
          DropdownMenuItem(value: "1", child: Text('2'))
        ],
        onChanged: (value) {},
      ),
    );
  }
}
