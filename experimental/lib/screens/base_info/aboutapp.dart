import 'package:flutter/material.dart';

import '../../theme/color.dart';

class aboutapp extends StatefulWidget {
  @override
  _aboutappState createState() => _aboutappState();
}

class _aboutappState extends State<aboutapp> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: w,
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: w,
        toolbarHeight: 35,
        backgroundColor: t,
        title: Text('About application'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          ListTile(
              title: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "This video introduces the software completely",
                    textDirection: TextDirection.ltr,
                  )),
              subtitle: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "the video",
                    textDirection: TextDirection.ltr,
                  ))),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              height: 300,
              width: 130,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 235, 235, 235),
                borderRadius: BorderRadius.circular(0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 124, 124, 124),
                    blurRadius: 6,
                    offset: Offset(0, 0), // Shadow position
                  ),
                ],
              ),
              child: IconButton(
                icon: Icon(Icons.video_collection),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
