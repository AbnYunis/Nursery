import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nursery/core/utils/assets.dart';
import 'package:nursery/core/utils/media_query.dart';
import 'package:nursery/core/utils/styles/p_style.dart';
import 'package:nursery/core/utils/widgets/done_finish_row.dart';

class UpcomingPassedTab extends StatelessWidget {
  const UpcomingPassedTab({
    super.key,
    required this.rightTab,
  });

  final bool rightTab;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          final w = SizeApp(context).width;
          return Container(
            margin: EdgeInsets.all(w * .02),
            padding: EdgeInsets.all(w * .03),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(w * .02),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x1E000000),
                  blurRadius: 12,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(children: [
              SvgPicture.asset(AssetService.logo),
              const SizedBoxApp(
                w: .02,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    rightTab
                        ? const DoneOrFinishRow(
                            state: 'done',
                            text: 'Mathematics',
                          )
                        : Text(
                            'Mathematics',
                            style:
                                PStyle.style16W500(w, const Color(0xFF1E1E1E)),
                          ),
                    const SizedBoxApp(
                      h: .01,
                    ),
                     Text(
                      'Prepare for the test by functions, their properties and graph',
                      style: PStyle.style12W400(w, const Color(0xFFA6A6A6)),
                    )
                  ],
                ),
              ),
            ]),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBoxApp(
            h: 0.003,
          );
        },
        itemCount: 10);
  }
}
