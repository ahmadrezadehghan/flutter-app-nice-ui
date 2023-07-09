import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';

import '../../theme/color.dart';
import '../../widgets/buttons.dart';
import '../../widgets/card_widget.dart';

class Node {
  final String name;
  final List<Node> children;

  Node({required this.name, required this.children});
}

class Undernude {
  final String name;

  Undernude({required this.name});
}

class sabtnam extends StatefulWidget {
  @override
  _sabtnamState createState() => _sabtnamState();
}

class _sabtnamState extends State<sabtnam> {
  final _formKey = GlobalKey<FormState>();
  List<String> horof = [
    "a",
    "b",
    "c",
    "d",
    "etc"
        "a",
    "b",
    "c",
    "d",
    "etc"
  ];
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
          "sign up for counseling",
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
                      image: AssetImage('assets/images/g1.png'),
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 15),
            child: card_sade(
              w_: MediaQuery.of(context).size.width - 40,
              h_: 80,
              color_: w,
              crop_: 10,
              child_: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("select councelers name",
                      style: PersianFonts.Shabnam.copyWith(
                          fontSize: 13.0, color: t)),
                  SizedBox(
                    height: 10,
                  ),
                  DropdownSearch<String>(
                    onChanged: (val) {},
                    clearButtonProps: ClearButtonProps(
                        icon: Icon(
                          Icons.clear,
                          color: const Color.fromARGB(255, 78, 78, 78),
                          size: 30,
                        ),
                        isVisible: false),
                    items: horof,
                    dropdownButtonProps: DropdownButtonProps(
                        color: const Color.fromARGB(255, 61, 61, 61)),
                    popupProps: PopupProps.menu(
                      showSearchBox: true,
                    ),
                  ),
                ],
              ),
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
                      hintText: 'name ',
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
                      hintText: "note",
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
                text_: "sign up",
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
