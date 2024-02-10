import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';

class YourChildWidget extends StatelessWidget {
  const YourChildWidget({
    super.key,
    this.width, required this.isSelected, required this.value,
  });

  final double? width;
  final int isSelected;
  final int value;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      height: SizeApp(context).height * 0.135,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        border: (value==isSelected)?Border.all(color: Color(0xFF225C8B), width: 3):null,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            'https://th.bing.com/th/id/OIP.SSX9keQJyVVPEDL7QlFaywHaE7?rs=1&pid=ImgDetMain',
          ),
        ),
        borderRadius: BorderRadius.circular(SizeApp(context).width * 0.03),
      ),
      child: (value==isSelected)?Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Checkbox(
            value: true,
            onChanged: (value) {},
            fillColor: MaterialStateColor.resolveWith(
              (states) => Color(0xFF225C8B),
            ),
          ),
        ],
      ):SizedBox(),
    );
  }
}
