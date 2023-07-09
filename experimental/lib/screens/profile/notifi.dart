import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';

import '../../theme/color.dart';

class Notifi extends StatefulWidget {
  @override
  _NotifiState createState() => _NotifiState();
}

class _NotifiState extends State<Notifi> {
  bool shouldCheck = false;
  bool shouldCheck2 = false;
  bool shouldCheck3 = false;
  bool shouldCheck4 = false;
  bool shouldCheck5 = false;
  bool shouldCheckDefault = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: w,
      appBar: AppBar(
        foregroundColor: b,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(widget_curve),
                bottomRight: Radius.circular(widget_curve))),
        toolbarHeight: 35,
        backgroundColor: g,
        bottomOpacity: 0.1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromARGB(255, 48, 48, 48)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Notification Settings',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'Notification Settings',
                    style: TextStyle(
                      color: t,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                elan(
                    text_: "Software General notification",
                    shouldCheck: shouldCheck,
                    onPressed: (val) {
                      //do your stuff here
                      setState(() {
                        shouldCheck = val;
                      });
                    },
                    size_font: 13),
                elan(
                    text_: "Wallet notification",
                    shouldCheck: shouldCheck2,
                    onPressed: (val) {
                      //do your stuff here
                      setState(() {
                        shouldCheck2 = val;
                      });
                    },
                    size_font: 13),
                elan(
                    text_:
                        "notification of application implementation processes",
                    shouldCheck: shouldCheck3,
                    onPressed: (val) {
                      //do your stuff here
                      setState(() {
                        shouldCheck3 = val;
                      });
                    },
                    size_font: 13),
                elan(
                    text_: " messages notification",
                    shouldCheck: shouldCheck4,
                    onPressed: (val) {
                      //do your stuff here
                      setState(() {
                        shouldCheck4 = val;
                      });
                    },
                    size_font: 13),
                elan(
                    text_: "following notification",
                    shouldCheck: shouldCheck4,
                    onPressed: (val) {
                      //do your stuff here
                      setState(() {
                        shouldCheck4 = val;
                      });
                    },
                    size_font: 13),
                elan(
                    text_: "like notification",
                    shouldCheck: shouldCheck4,
                    onPressed: (val) {
                      //do your stuff here
                      setState(() {
                        shouldCheck4 = val;
                      });
                    },
                    size_font: 13),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class elan extends StatelessWidget {
  final String text_;
  final bool shouldCheck;

  final Function(bool) onPressed;

  final double size_font;

  elan(
      {Key? key,
      required this.text_,
      required this.shouldCheck,
      required this.onPressed,
      required this.size_font})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 35,
        ),
        Container(
          decoration: BoxDecoration(
            color: w,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 160, 160, 160),
                blurRadius: 3,
                offset: Offset(0, 5), // Shadow position
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomCheckBox(
                value: shouldCheck,
                shouldShowBorder: true,
                borderColor: g,
                checkedFillColor: Color.fromARGB(255, 29, 201, 23),
                borderRadius: 8,
                borderWidth: 1,
                checkBoxSize: 22,
                onChanged: onPressed,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  text_,
                  style: TextStyle(
                    color: t,
                    fontSize: size_font,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
