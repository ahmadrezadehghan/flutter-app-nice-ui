import 'package:flutter/material.dart';

import '../../theme/color.dart';

class help extends StatefulWidget {
  @override
  _helpState createState() => _helpState();
}

class _helpState extends State<help> {
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
        title: Text("Troubleshooting Guide"),
      ),
      body: ListView(
        children: [
          ListTile(
              title: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "In case of software failure:",
                    textDirection: TextDirection.ltr,
                  )),
              subtitle: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Contact technical support and try to run the software again",
                    textDirection: TextDirection.ltr,
                  ))),
          ListTile(
              title: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "What should we do if the internet is down during the test?",
                    textDirection: TextDirection.ltr,
                  )),
              subtitle: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Troubleshoot your internet and then run the software again",
                    textDirection: TextDirection.ltr,
                  ))),
          ListTile(
              title: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "In case of financial problems:",
                    textDirection: TextDirection.ltr,
                  )),
              subtitle: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Contact Financial Support",
                    textDirection: TextDirection.ltr,
                  ))),
          ListTile(
              title: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Any illegal activities:",
                    textDirection: TextDirection.ltr,
                  )),
              subtitle: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "They will face legal action and follow up",
                    textDirection: TextDirection.ltr,
                  ))),
          ListTile(
              title: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "If you had connection problems:",
                    textDirection: TextDirection.ltr,
                  )),
              subtitle: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Turn off your filter and proxy",
                    textDirection: TextDirection.ltr,
                  ))),
          ListTile(
              title: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Backup contact number:",
                    textDirection: TextDirection.ltr,
                  )),
              subtitle: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Technical: ******** and financial: ******** and educational: ********",
                    textDirection: TextDirection.ltr,
                  ))),
        ],
      ),
    );
  }
}
