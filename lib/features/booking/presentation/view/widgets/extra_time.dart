import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';
import 'package:nursery/core/utils/widgets/custom_container.dart';
import 'package:nursery/core/utils/widgets/radio_button.dart';

class ExtraTime extends StatefulWidget {
  const ExtraTime({
    super.key,
  });

  @override
  State<ExtraTime> createState() => _ExtraTimeState();
}

class _ExtraTimeState extends State<ExtraTime> {
  int currentValue = 0;
 
  @override
  Widget build(BuildContext context) {
    double w=SizeApp(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          'Extra time',
          style: PStyle.style14W400(w,Color(0xFF1E1E1E) )
        ),
        const SizedBoxApp(h: 0.01,),
        CustomContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomRadioButton(
                text: 'Default time (09:00 am - 04:00 pm))',
                value: 1,
                currentValue: currentValue,
                onChange: changeRadio,
              ),
              CustomRadioButton(
                text: '1 hour extra (09:00 am - 04:00 pm) (fees)',
                value: 2,
                currentValue: currentValue,
                onChange: changeRadio,
              ),

            ],
          ),
        )
      ],
    );
  }

  void changeRadio(p0) {
                setState(() {
                  currentValue = p0!;
                });
              }
}
