import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,

      //   child: SizedBox(
      //     width: 200,
      //     height: 200,
      //     child: Icon(
      //       Icons.tag_faces_sharp,
      //       size: 20,
      //     ),
      //   ),
    );
  }
}
