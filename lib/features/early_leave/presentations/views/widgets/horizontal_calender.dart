import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';

class HorizontalCalendar extends StatefulWidget {
  const HorizontalCalendar({super.key});

  @override
  _HorizontalCalendarState createState() {
    return _HorizontalCalendarState();
  }
}

class _HorizontalCalendarState extends State<HorizontalCalendar> {
  DateTime selectedDate = DateTime.now();

  int currentDateSelectedIndex = 0;
  ScrollController scrollController = ScrollController();
  List<String> listOfDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:SizeApp(context).height * 0.08 ,
        child: ListView.separated(
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(width: 5);
      },
      itemCount: 7,
      controller: scrollController,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        bool isFriOrSat = listOfDays[
                    DateTime.now().add(Duration(days: index)).weekday -
                        1] ==
                "Fri" ||
            listOfDays[DateTime.now().add(Duration(days: index)).weekday -
                    1] ==
                "Sat";

        bool isSelected = currentDateSelectedIndex == index;
        return InkWell(
          onTap: () {
            if (!isFriOrSat) {
              setState(() {
                currentDateSelectedIndex = index;
                selectedDate = DateTime.now().add(Duration(days: index));
              });
            }
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds:500),
            curve: Curves.fastEaseInToSlowEaseOut,
            padding: EdgeInsets.symmetric(horizontal: SizeApp(context).width * 0.035),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: currentDateSelectedIndex == index
                    ? Color(0xFFFEA95C)
                    : Colors.transparent),
            child: Column(
              mainAxisSize: MainAxisSize.min,

              children: [
                Text(
                  listOfDays[DateTime.now()
                              .add(Duration(days: index))
                              .weekday -
                          1]
                      .toString(),
                  style: TextStyle(
                    color: isSelected?Colors.white:const Color(0xFFBCBCBC),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  DateTime.now().add(Duration(days: index)).day.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: isSelected
                        ? Colors.white
                        : isFriOrSat
                            ? Colors.grey
                            : Colors.black,
                  ),
                ),
                if(isSelected)...[CircleAvatar(radius: 2,backgroundColor: Colors.white,)]
              ],
            ),
          ),
        );
      },
    ));
  }
}
