import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';
import 'package:nursery/core/utils/widgets/custom_container.dart';
import 'package:nursery/core/utils/widgets/custom_text_form.dart';
import 'package:nursery/core/utils/widgets/radio_button.dart';

class BookingMedicineWidget extends StatefulWidget {
  const BookingMedicineWidget({
    super.key,
  });

  @override
  State<BookingMedicineWidget> createState() => _BookingMedicineWidgetState();
}

class _BookingMedicineWidgetState extends State<BookingMedicineWidget> {
  int currentValue = 0;
  @override
  Widget build(BuildContext context) {
    double w = SizeApp(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Medicine',
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
                  CustomRadioButton(text: 'Yes', value: 1, onChange:changeRadio , currentValue: currentValue),
                  const Spacer(),
                  CustomRadioButton(text: 'No', value: 2, onChange:changeRadio , currentValue: currentValue),
                ],
              ),
              if(currentValue==1)...[
                const CustomTextForm(hText: 'Mention the medicine that he will take',lines: 4,)
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
