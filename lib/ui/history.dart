// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'about.dart';
import 'home.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Our History"),
        ),
        body: ListView(children: [
          Column(
            children: <Widget>[
              CarouselSlider(
                items: [
                  Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => home()));
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: AssetImage('1.jpg'),
                            height: 700,
                            width: 392,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 6),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => home()));
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: AssetImage('2.jpg'),
                            height: 700,
                            width: 392,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 6),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => home()));
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: AssetImage('3.jpg'),
                            height: 700,
                            width: 392,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 6),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => home()));
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: AssetImage('4.jpg'),
                            height: 700,
                            width: 392,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 6),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => home()));
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: AssetImage('5.jpg'),
                            height: 700,
                            width: 392,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 6),
                        ],
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 705.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 1,
                ),
              ),
            ],
          ),
        ]));
  }
}
