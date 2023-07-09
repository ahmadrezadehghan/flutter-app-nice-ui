import 'package:flutter/material.dart';

import '../../theme/color.dart';
import '../../widgets/buttons.dart';

class Node {
  final String name;
  final List<Node> children;

  Node({required this.name, required this.children});
}

class Undernude {
  final String name;

  Undernude({required this.name});
}

class hamkari extends StatefulWidget {
  @override
  _hamkariState createState() => _hamkariState();
}

class _hamkariState extends State<hamkari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: w,
      appBar: AppBar(
        foregroundColor: b,
        backgroundColor: t,
        toolbarHeight: 40,
        title: Align(
            alignment: Alignment.topRight,
            child: Text(
              "",
              style: TextStyle(fontSize: 14),
            )),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "work with us",
                maxLines: 1,
                style: TextStyle(
                    color: Color.fromARGB(255, 83, 83, 83),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Kalameh'),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: w, // Your desired background color
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 129, 129, 129),
                      blurRadius: 5,
                      offset: Offset(2, 2), // Shadow position
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    style: TextStyle(color: t),
                    keyboardType: TextInputType.number,
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      fillColor: t,
                      hintText: "title",
                      hintStyle: TextStyle(color: t, fontSize: 14),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 25.0, right: 25, bottom: 15, top: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: w, // Your desired background color
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 129, 129, 129),
                      blurRadius: 5,
                      offset: Offset(2, 2), // Shadow position
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    style: TextStyle(color: t),
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.multiline,
                    maxLines: 9,
                    validator: (val) =>
                        val!.isEmpty ? 'Post body is required' : null,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "how you can work with us?",
                      hintStyle: TextStyle(color: t, fontSize: 14),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 25.0, right: 25, bottom: 15, top: 10),
            child: btn_me4(
                size_font: 14,
                text_: 'send',
                color_: Colors.greenAccent,
                width_: MediaQuery.of(context).size.width,
                height_: 60,
                onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
