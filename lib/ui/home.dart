import 'package:project/ui/about.dart';
import 'package:project/ui/events.dart';
import 'package:project/ui/history.dart';
import 'package:project/ui/profile.dart';
import 'package:project/ui/addMember.dart';
import 'package:project/ui/settings.dart';
import '../widgets/button.dart';
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
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Profile')),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text('Meetings'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddMember()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text('Events'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Events()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text('Notification'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Notif()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text('Events'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Events()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text('History'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => History()));
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SpeedDial(
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              }),
          SpeedDialChild(
            child: Icon(Icons.account_circle),
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
            label: 'Profile',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
        ],
      ),
      appBar: AppBar(actions: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
          child: const Text('Login'),
        ),
      ]),
    );
  }
}
