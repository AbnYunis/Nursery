import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/features/booking/presentation/view/widgets/booking_check_in_out.dart';
import 'package:nursery/features/booking/presentation/view/widgets/extra_time.dart';
import 'booking_food.dart';
import 'booking_medicine.dart';
import 'child_data.dart';
import 'days_of_staying.dart';

class BookingScrollPart extends StatelessWidget {
  const BookingScrollPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBoxApp(
              h: 0.02,
            ),
            DaysOfStaying(),
            SizedBoxApp(
              h: 0.02,
            ),
            ChildData(),
            SizedBoxApp(
              h: 0.02,
            ),
            BookingFoodWidget(),
           SizedBoxApp(
              h: 0.02,
            ),
            BookingMedicineWidget(),
            SizedBoxApp(h: 0.02,),
            BookingCheckInOutWidget(text: 'Check in'),
            SizedBoxApp(h: 0.02,),
            BookingCheckInOutWidget(text: 'Check Out'),
            SizedBoxApp(h: 0.02,),
            ExtraTime(),
          ],
        ),
      ),
    );
  }
}

