import 'package:project/ui/about.dart';
import 'package:project/ui/events.dart';
import 'package:project/ui/history.dart';
import 'package:project/ui/profile.dart';
import 'meetings.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'notification.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SpeedDial(
          //Speed dial menu
          // marginBottom: 10, //margin bottom
          icon: Icons.menu, //icon on Floating action button
          activeIcon: Icons.close, //icon when menu is expanded on button
          backgroundColor: Colors.blue, //background color of button
          foregroundColor: Colors.white, //font color, icon color in button
          activeBackgroundColor:
              Colors.deepPurpleAccent, //background color when menu is expanded
          activeForegroundColor: Colors.white,
          // buttonSize: 56.0, //button size doi
          visible: true,
          closeManually: false,
          curve: Curves.bounceIn,
          overlayColor: Colors.black,
          overlayOpacity: 0.5,
          onOpen: () => print('OPENING DIAL'), // action when menu opens
          onClose: () => print('DIAL CLOSED'), //action when menu closes

          elevation: 8.0, //shadow elevation of button
          shape: CircleBorder(), //shape of button

          children: [
            SpeedDialChild(
                //speed dial child
                child: Icon(Icons.brightness_high),
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                label: 'Settings',
                labelStyle: TextStyle(fontSize: 18.0),
                onTap: () {
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) => Set()));
                }),
            SpeedDialChild(
                child: Icon(Icons.feed),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                label: 'About',
                labelStyle: TextStyle(fontSize: 18.0),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                }),
            SpeedDialChild(
              child: Icon(Icons.account_circle),
              foregroundColor: Colors.white,
              backgroundColor: Colors.green,
              label: 'Profile',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
            ),

            //add more menu item childs here
          ],
        ),
        appBar: AppBar(
          actions: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 270, 0),
              child: Material(
                color: Colors.blue,
                elevation: 8,
                borderRadius: BorderRadius.circular(28),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => home()));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(
                        image: AssetImage('logo.png'),
                        height: 60,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 6),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text('log in'),
            ),
          ],
          // title: Text('Welcome to CDC'),
          backgroundColor: Colors.grey,
        ),
        body: SafeArea(
            child: Column(children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            child: Material(
              color: Colors.blue,
              elevation: 8,
              borderRadius: BorderRadius.circular(28),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Meetings()));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Ink.image(
                      image: AssetImage('meeting.jpg'),
                      height: 120,
                      width: 160,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 6),
                    Text('Meeting',
                        style: TextStyle(fontSize: 32, color: Colors.white)),
                    SizedBox(height: 6),
                  ],
                ),
              ),
            ),
          ),
          Container(
            //padding: EdgeInsets.fromLTRB(200, 0, 20, 0),
            alignment: Alignment.topRight,
            child: Material(
              color: Colors.blue,
              elevation: 8,
              borderRadius: BorderRadius.circular(28),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Events()));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Ink.image(
                      image: AssetImage('events.jpg'),
                      height: 120,
                      width: 160,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 6),
                    Text('Events',
                        style: TextStyle(fontSize: 32, color: Colors.white)),
                    SizedBox(height: 6),
                  ],
                ),
              ),
            ),
          ),
          Container(
            //padding: EdgeInsets.fromLTRB(30, 0, 200, 0),
            alignment: Alignment.centerLeft,
            child: Material(
              color: Colors.blue,
              elevation: 8,
              borderRadius: BorderRadius.circular(28),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notif()));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Ink.image(
                      image: AssetImage('notification.jpeg'),
                      height: 120,
                      width: 160,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 6),
                    Text('Notification',
                        style: TextStyle(fontSize: 26, color: Colors.white)),
                    SizedBox(height: 6),
                  ],
                ),
              ),
            ),
          ),
          Container(
              //padding: EdgeInsets.fromLTRB(10, 100, 2, 0),
              alignment: Alignment.centerRight,
              child: Material(
                  color: Colors.blue,
                  elevation: 8,
                  borderRadius: BorderRadius.circular(28),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => History()));
                    },
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Ink.image(
                        image: AssetImage('history.jpg'),
                        height: 120,
                        width: 160,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 6),
                      Text('History',
                          style: TextStyle(fontSize: 26, color: Colors.white)),
                      SizedBox(height: 6),
                    ]),
                  ))),
          Container()
        ])));
  }
}

class photo extends StatelessWidget {
  const photo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 2.0),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle),
        height: 100,
        width: 100,
        child: const Image(
          image: AssetImage('1.jpg'),
        ),
      ),
    );
  }
}
