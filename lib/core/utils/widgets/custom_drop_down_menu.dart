import 'package:flutter/material.dart';

import '../media_query.dart';

class CustomDropDownMenu extends StatefulWidget {
  const CustomDropDownMenu({super.key});

  @override
  State<CustomDropDownMenu> createState() => _CustomDropDownMenuState();
}

class _CustomDropDownMenuState extends State<CustomDropDownMenu> {
  final List<String> items = [
    '04 Feb 2023 - 16 Feb 2023',
    '05 Feb 2023 - 16 Feb 2023',
    '06 Feb 2023 - 16 Feb 2023',
    '07 Feb 2023 - 16 Feb 2023',
  ];

  String selectedItem = '04 Feb 2023 - 16 Feb 2023';

  @override
  Widget build(BuildContext context) {
    final h = SizeApp(context).height;
    final w = SizeApp(context).width;
    return Container(
      decoration: ShapeDecoration(

        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFE5E1E5)),
          borderRadius: BorderRadius.circular(w * .03),
        ),
      ),
      child: DropdownButton<String>(
        borderRadius: BorderRadius.circular(20),
        value: selectedItem,
        onChanged: (String? newValue) {
          if (newValue != null) {
            setState(() {
              selectedItem = newValue;
            });
          }
        },
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Container(
              padding:  EdgeInsets.all(w*.02),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(w*.02),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.calendar_month,
                    color: Color(0xFFA6A6A6),
                  ),
                  const SizedBoxApp(w: .02,),
                  Text(value)
                ],
              ),
            ),
          );
        }).toList(),
        style: const TextStyle(
          color: Colors.black, // Text color
        ),
        icon: const Icon(Icons.keyboard_arrow_down_rounded),
        iconSize: w*.1,
        elevation: 16,
        isExpanded: true,
        underline: Container(
          height: 0,
        ),
      ),
    );
  }
}
