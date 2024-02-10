import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/widgets/custom_text_form.dart';
import 'package:nursery/core/utils/widgets/radio_button.dart';

class ChoosePerson extends StatefulWidget {
  const ChoosePerson({
    super.key,
  });

  @override
  State<ChoosePerson> createState() => _ChoosePersonState();
}

class _ChoosePersonState extends State<ChoosePerson> {
  int currentValue=0;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            CustomRadioButton(text: "Me",value: 1,currentValue:currentValue,onChange: (p0) {
              setState(() {
                currentValue=p0!;
              });
            }, ),
            const Spacer(),
            CustomRadioButton(text: "Someone else",value: 2,currentValue:currentValue,onChange: (p0) {
              setState(() {
                currentValue=p0!;
              });
            }, ),
          ],
        ),
        if(currentValue!=1)...[
          const CustomTextForm(hText: 'Name'),
          const SizedBoxApp(h: 0.02,),
          const CustomTextForm(hText: 'Phone Number'),
          const SizedBoxApp(h: 0.02,),
          const CustomTextForm(hText: 'ID'),
        ]

      ],
    );
  }
}
