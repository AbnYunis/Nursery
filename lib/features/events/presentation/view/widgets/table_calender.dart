import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class TablesCalender extends StatelessWidget {
  const TablesCalender({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      calendarBuilders: CalendarBuilders(
        selectedBuilder: (context, date, events) {
          // Customize day widget here
          return Container(
            padding: const EdgeInsets.symmetric(horizontal:8),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF225B8B), width: 2),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${date.day}',
                  style: const TextStyle(color: Colors.black),
                ),
                CircleAvatar(
                  radius: 3,
                  backgroundColor: (date.weekday == DateTime.friday ||
                          date.weekday == DateTime.saturday)
                      ? const Color(0xFFFEA95C)
                      : const Color(0xFF225B8B),
                )
              ],
            ),
          );
        },
        defaultBuilder: (context, date, events) {
          // Customize day widget here
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${date.day}',
                style: const TextStyle(color: Colors.black),
              ),
              CircleAvatar(
                radius: 3,
                backgroundColor: (date.weekday == DateTime.friday ||
                        date.weekday == DateTime.saturday)
                    ? const Color(0xFFFEA95C)
                    : const Color(0xFF225B8B),
              )
            ],
          );
        },
      ),
      availableGestures: AvailableGestures.horizontalSwipe,
      focusedDay: DateTime.now(),
      selectedDayPredicate: (day) => isSameDay(day, DateTime.now()),
      firstDay: DateTime.utc(2024, 1, 1),
      lastDay: DateTime.utc(2024, 12, 31),
      calendarStyle: const CalendarStyle(
        selectedTextStyle: TextStyle(color: Colors.black),
        todayDecoration: BoxDecoration(
          shape: BoxShape.rectangle,
        ),
      ),
      headerStyle: const HeaderStyle(
          formatButtonVisible: false,
          leftChevronVisible: false,
          rightChevronIcon: Icon(Icons.keyboard_arrow_down),
          headerPadding: EdgeInsets.only(left: 10)),

    );
  }
}
