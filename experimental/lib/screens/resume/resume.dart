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

class resume extends StatefulWidget {
  @override
  _resumeState createState() => _resumeState();
}

class _resumeState extends State<resume> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: w,
      appBar: AppBar(
        foregroundColor: b,
        centerTitle: true,
        backgroundColor: t,
        toolbarHeight: 40,
        title: Text(
          "resume",
          style: TextStyle(fontSize: 14, fontFamily: 'Kalameh'),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.22,
                  width: MediaQuery.of(context).size.width * 0.82,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/p6.png'),
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
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
                      hintText: 'name',
                      hintStyle: TextStyle(color: t, fontSize: 14),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topLeft,
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
                      hintText: 'family name',
                      hintStyle: TextStyle(color: t, fontSize: 14),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topLeft,
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
                      hintText: 'email',
                      hintStyle: TextStyle(color: t, fontSize: 14),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topLeft,
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
                      hintText: 'phone number',
                      hintStyle: TextStyle(color: t, fontSize: 14),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topLeft,
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
                      hintText: 'education',
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
                      hintText: "write about yourself",
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
