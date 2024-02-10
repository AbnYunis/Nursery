import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';
import 'package:nursery/core/utils/widgets/custom_container.dart';
import 'package:nursery/core/utils/widgets/custom_text_form.dart';
import 'package:nursery/core/utils/widgets/radio_button.dart';

class BookingFoodWidget extends StatefulWidget {
  const BookingFoodWidget({
    super.key,
  });

  @override
  State<BookingFoodWidget> createState() => _BookingFoodWidgetState();
}

class _BookingFoodWidgetState extends State<BookingFoodWidget> {
  int currentValue = 0;
  @override
  Widget build(BuildContext context) {
    double w = SizeApp(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Food',
          style: PStyle.style14W400(w, const Color(0xFF1E1E1E)),
        ),
        const SizedBoxApp(
          h: 0.02,
        ),
        CustomContainer(
          child: Column(
            children: [
              Row(
                children: [
                  CustomRadioButton(text: 'With food', value: 1, onChange:changeRadio , currentValue: currentValue),
                  const Spacer(),
                  CustomRadioButton(text: 'Without food', value: 2, onChange:changeRadio , currentValue: currentValue),
                ],
              ),
              if(currentValue==1)...[
                const CustomTextForm(hText: 'Add the forbidden food for your child',lines: 4,)
              ]
            ],
          ),
        ),
      ],
    );
  }
  void changeRadio(p0) {
    setState(() {
      currentValue = p0!;
    });
  }
}
