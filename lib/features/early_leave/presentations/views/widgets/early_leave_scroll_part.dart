import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'choose_person.dart';
import 'drob_down_field.dart';

class EarlyLeaveScrollPart extends StatelessWidget {
  const EarlyLeaveScrollPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBoxApp(
              h: 0.03,
            ),
            const Text(
              'Select Time',
              style: TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            const SizedBoxApp(
              h: 0.02,
            ),
            const Row(
              children: [
                DropDownField(),
                SizedBoxApp(w: 0.04,),
                DropDownField(),
              ],
            ),
            Divider(
              color: const Color(0xFFE5E1E5),
              thickness: 2,
              height: SizeApp(context).height * 0.06,
            ),
            const Text(
              'Who is going to take the child?',
              style: TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            const ChoosePerson(),

          ],
        ),
      ),
    );
  }
}

