import 'package:flutter/material.dart';

import '../../theme/color.dart';

class questions extends StatefulWidget {
  @override
  _questionsState createState() => _questionsState();
}

class _questionsState extends State<questions> {
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
        title: Text('Frequently Asked Questions'),
      ),
      body: ListView(
        children: [
          ListTile(
              title: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "what is this app?",
                    textDirection: TextDirection.ltr,
                  )),
              subtitle: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Software related to accounting and training and testing is aimed at improving the literacy level of specialists",
                    textDirection: TextDirection.ltr,
                  ))),
          ListTile(
              title: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Who is it suitable for?",
                    textDirection: TextDirection.ltr,
                  )),
              subtitle: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "This software is suitable for accounting professionals and teachers",
                    textDirection: TextDirection.ltr,
                  ))),
          ListTile(
              title: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Why is this software the best?",
                    textDirection: TextDirection.ltr,
                  )),
              subtitle: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "In its construction, the most up-to-date methods and modern technologies have been used",
                    textDirection: TextDirection.ltr,
                  ))),
          ListTile(
              title: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "What parts does it include?",
                    textDirection: TextDirection.ltr,
                  )),
              subtitle: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Includes various parts of consulting, testing, training, advertising, and projects, etc.",
                    textDirection: TextDirection.ltr,
                  ))),
          ListTile(
              title: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "How to change accounting?",
                    textDirection: TextDirection.ltr,
                  )),
              subtitle: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Using the user menu",
                    textDirection: TextDirection.ltr,
                  ))),
          ListTile(
              title: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "...",
                    textDirection: TextDirection.ltr,
                  )),
              subtitle: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "...",
                    textDirection: TextDirection.ltr,
                  ))),
        ],
      ),
    );
  }
}
