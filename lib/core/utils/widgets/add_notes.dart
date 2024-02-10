import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import '../media_query.dart';
import 'custom_text_form.dart';

class AddNotes extends StatelessWidget {
  const AddNotes({super.key});

  @override
  Widget build(BuildContext context) {
    final h = SizeApp(context).height;
    final w = SizeApp(context).width;
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(w * .015)),
            alignment: Alignment.centerLeft,
            contentPadding: EdgeInsets.all(w * .05),
            content: SizedBox(
              width: w * .9,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Add Notes',
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: const Icon(Iconsax.close_circle_outline),
                      ),
                    ],
                  ),
                  Divider(
                    height: h * 0.03,
                    thickness: 2,
                  ),
                  const CustomTextForm(
                    hText: 'Add your notes here',
                    lines: 5,
                  ),
                  const SizedBoxApp(h: .015,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(w*.015),
                          ),
                          backgroundColor: Colors.white,
                          minimumSize: Size(w*.32, h*.05),
                        ),
                        onPressed: () {
                          context.pop();
                        },
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            color: Color(0xFFA6A6A6),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),

                      ), ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(w*.015),
                          ),
                          backgroundColor: const Color(0xFF225B8B),
                          minimumSize: Size(w*.32, h*.05),

                        ),
                        onPressed: () {},
                        child: const Text(
                          'Add',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(w * .03),
        decoration: ShapeDecoration(
          color: const Color(0xFFFEA95C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(w * .02),
          ),
        ),
        child: Row(
          children: [
            const Icon(
              Iconsax.message_text_1_outline,
              color: Colors.white,
            ),
            const SizedBoxApp(
              w: .02,
            ),
            Text(
              'Add notes for his bottle',
              style: TextStyle(
                color: Colors.white,
                fontSize: w * .04,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
