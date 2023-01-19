import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:project/services/theme_services.dart';
import 'package:project/widgets/theme.dart';
import 'package:project/widgets/button.dart';

import '../widgets/add_task_bar.dart';

//import 'add_task_bar.dart';

class Meetings extends StatefulWidget {
  const Meetings({Key? key}) : super(key: key);

  @override
  State<Meetings> createState() => _MeetingState();
}

class _MeetingState extends State<Meetings> {
  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        backgroundColor: context.theme.backgroundColor,
        body: Column(
          children: [
            _addTaskBar(),
            _addDateBar(),
          ],
        ));
  }

  _addDateBar() {
    return Container(
        margin: const EdgeInsets.only(top: 20, left: 20),
        child: DatePicker(
          DateTime.now(),
          height: 100,
          width: 80,
          initialSelectedDate: DateTime.now(),
          selectionColor: primaryClr,
          selectedTextColor: Colors.white,
          dateTextStyle: GoogleFonts.lato(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.grey),
          dayTextStyle: GoogleFonts.lato(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey),
          monthTextStyle: GoogleFonts.lato(
              fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey),
          onDateChange: (date) {
            _selectedDate = date;
          },
        ));
  }

  _addTaskBar() {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                DateFormat.yMMMd().format(DateTime.now()),
                style: subHeadingStyle,
              ),
              Text(
                "Today",
                style: HeadingStyle,
              ),
            ],
          )),
          MyButton(
            label: "+ Add Task",
            onTap: () => Get.to(AddTaskPage()),
          )
        ],
      ),
    );
  }

  _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: context.theme.backgroundColor,
      leading: GestureDetector(
        onTap: () {
          ThemeService().switchTheme();
        },
        child: Icon(
            Get.isDarkMode ? Icons.wb_sunny_outlined : Icons.nightlight_round,
            size: 20,
            color: Get.isDarkMode ? Colors.white : Colors.black),
      ),
      actions: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/profile.png"),
        ),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
