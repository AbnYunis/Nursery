import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/widgets/back_row.dart';
import 'package:nursery/core/utils/widgets/custom_app_bar.dart';
import 'package:nursery/core/utils/widgets/custom_button.dart';
import 'booking_scroll_part.dart';

class BookingBody extends StatelessWidget {
  const BookingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeApp(context).height * 0.03,
        horizontal: SizeApp(context).width * 0.05,
      ),
      child:  Column(
        children: [
          const CustomAppBar(),
          const SizedBoxApp(
            h: 0.02,
          ),
          const BackRow(text: 'Booking Request', date: false),
          const BookingScrollPart(),
          const SizedBoxApp(
            h: 0.02,
          ),
          CustomButton(onPressed: (){}, text: 'Next',width: double.infinity,)
        ],
      ),
    );
  }
}


