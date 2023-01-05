import 'package:flutter/material.dart';

class Notif extends StatefulWidget {
  const Notif({Key? key}) : super(key: key);

  @override
  State<Notif> createState() => _NotifState();
}

class _NotifState extends State<Notif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[300],
        body: SafeArea(child: Column(children: <Widget>[Container()])));
  }
}

class img extends StatefulWidget {
  const img({Key? key}) : super(key: key);

  @override
  State<img> createState() => _imgState();
}

class _imgState extends State<img> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Container example"),
            ),
            body: Container(
                constraints: const BoxConstraints.expand(),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("1.jpg"), fit: BoxFit.cover),
                ),
                child: const Text(
                  'Image in fullscreen',
                  style: TextStyle(fontSize: 34, color: Colors.red),
                ))));
  }
}
