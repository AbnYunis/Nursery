import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import '../../../../../core/utils/widgets/your_child_image.dart';

class HaveTwoChild extends StatefulWidget {
  const HaveTwoChild({
    super.key,
  });

  @override
  State<HaveTwoChild> createState() => _HaveTwoChildState();
}

class _HaveTwoChildState extends State<HaveTwoChild> {
  int isSelected=1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            child: YourChildWidget(value: 1,isSelected: isSelected),
            onTap: () {
              setState(() {
                isSelected=1;
              });
            },
          ),
        ),
        SizedBoxApp(
          w: 0.05,
        ),
        Expanded(
          child: InkWell(
            child: YourChildWidget(value: 2,isSelected: isSelected),
            onTap: () {
              setState(() {
                isSelected=2;
              });
            },
          ),
        ),
      ],
    );
  }
}
