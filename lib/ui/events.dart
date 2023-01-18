import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventState();
}

class _EventState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SfCalendar(
      view: CalendarView.month,
    ));

    //backgroundColor: Colors.blue[300],
    //body: SafeArea(child: Column(children: <Widget>[Container()]))
  }
}
