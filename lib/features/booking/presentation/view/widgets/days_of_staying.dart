import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';
import 'package:nursery/core/utils/widgets/custom_container.dart';
import 'package:nursery/core/utils/widgets/custom_text_form.dart';
import 'package:nursery/core/utils/widgets/radio_button.dart';

class DaysOfStaying extends StatefulWidget {
  const DaysOfStaying({
    super.key,
  });

  @override
  State<DaysOfStaying> createState() => _DaysOfStayingState();
}

class _DaysOfStayingState extends State<DaysOfStaying> {
  int currentValue = 0;
 
  @override
  Widget build(BuildContext context) {
    double w=SizeApp(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          'How many days of staying?',
          style: PStyle.style14W400(w,Color(0xFF1E1E1E) )
        ),
        const SizedBoxApp(h: 0.01,),
        CustomContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomRadioButton(
                text: 'Days ( 100 EGP per day )',
                value: 1,
                currentValue: currentValue,
                onChange: changeRadio,
              ),
              if(currentValue==1)...[
                Text(
                  'Enter number of days',
                  style:PStyle.style14W500(w, const Color(0xFF333333))
                ),
                const SizedBoxApp(h: 0.01,),
                const CustomTextForm(hText: 'EX. 3 days')
              ],
              CustomRadioButton(
                text: 'Week ( 400 EGP )',
                value: 2,
                currentValue: currentValue,
                onChange: changeRadio,
              ),
              CustomRadioButton(
                text: 'Month ( 1800 EGP )',
                value: 3,
                currentValue: currentValue,
                onChange: changeRadio,
              ),
              CustomRadioButton(
                text: 'Half Month ( 900 EGP )',
                value: 4,
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
