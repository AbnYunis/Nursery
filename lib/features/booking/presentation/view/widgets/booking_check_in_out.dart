import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';
import 'package:nursery/core/utils/widgets/custom_container.dart';
import 'package:nursery/core/utils/widgets/custom_text_form.dart';
import 'package:nursery/core/utils/widgets/radio_button.dart';

class BookingCheckInOutWidget extends StatefulWidget {
  const BookingCheckInOutWidget({
    super.key, required this.text,
  });
final String text;
  @override
  State<BookingCheckInOutWidget> createState() => _BookingCheckInOutWidgetState();
}

class _BookingCheckInOutWidgetState extends State<BookingCheckInOutWidget> {
  int currentValue = 0;
  @override
  Widget build(BuildContext context) {
    double w = SizeApp(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
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
                  CustomRadioButton(text: 'I will take him', value: 1, onChange:changeRadio , currentValue: currentValue),
                  const Spacer(),
                  CustomRadioButton(text: 'Bus (fees)', value: 2, onChange:changeRadio , currentValue: currentValue),
                ],
              ),
              CustomRadioButton(text: 'Someone else', value: 3, onChange:changeRadio , currentValue: currentValue),
              if(currentValue==3)...const[
                CustomTextForm(hText: 'Name'),
                SizedBoxApp(h: 0.01,),
                CustomTextForm(hText: 'Phone Number'),
                SizedBoxApp(h: 0.01,),
                CustomTextForm(hText: 'ID'),
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
