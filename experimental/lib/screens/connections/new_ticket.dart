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

class new_ticket extends StatefulWidget {
  @override
  _new_ticketState createState() => _new_ticketState();
}

class _new_ticketState extends State<new_ticket> {
  String monaseb = "انتخاب دسته بندی";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _txtControllerBody = TextEditingController();
  List<Color> color_select = [Colors.white10, Colors.white10, Colors.white10];
  List<int> count = [0, 0, 0];
  String dasteha = "tiket catigory";
  List<String> treeLevels = ['title', 'sub title', 'Species'];
  List<Node> selectedNodes = [
    Node(name: 'catigories', children: <Node>[
      Node(name: 'financial help center', children: <Node>[
        Node(name: 'accounts', children: []),
        Node(name: ' wallet', children: []),
        Node(name: 'fail to transfer ', children: []),
      ]),
      Node(name: 'application help center', children: <Node>[
        Node(name: 'login/register', children: []),
        Node(name: 'main page', children: []),
        Node(name: 'ads', children: []),
        Node(name: 'crash report', children: []),
      ]),
      Node(name: 'learning help center', children: <Node>[
        Node(name: 'exam', children: []),
        Node(name: 'learning', children: []),
        Node(name: 'sth else', children: []),
      ]),
    ]),
  ];
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];

    for (var i = 0; i < selectedNodes.length; i++) {
      if (selectedNodes[i] != null &&
          (selectedNodes[i].children?.isNotEmpty ?? false)) {
        items.add(
          Padding(
            padding: const EdgeInsets.only(right: 15.0, bottom: 5),
            child: Text(
              treeLevels[i],
              style: TextStyle(fontSize: 15),
              textDirection: TextDirection.ltr,
            ),
          ),
        );

        items.add(Center(
          child: Padding(
            padding:
                const EdgeInsets.only(right: 15.0, left: 15, top: 5, bottom: 5),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: w,
                // Your desired background color
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 129, 129, 129),
                    blurRadius: 4,
                    offset: Offset(1, 1), // Shadow position
                  ),
                ],
              ),
              child: DropdownButtonFormField(
                style: TextStyle(fontSize: 14, color: t),
                focusColor: w,
                iconEnabledColor: t,
                iconDisabledColor: w,
                isExpanded: true,
                alignment: Alignment.center,
                dropdownColor: Colors.white,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.greenAccent),
                  ),
                ),
                value:
                    selectedNodes.length > i + 1 ? selectedNodes[i + 1] : null,
                items: selectedNodes[i]
                    .children
                    .map((node) => DropdownMenuItem(
                          value: node,
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                node.name,
                                textDirection: TextDirection.ltr,
                              )),
                        ))
                    .toList(),
                onChanged: (selected) => setState(() {
                  selectedNodes.removeRange(i + 1, selectedNodes.length);
                  selectedNodes.add(selected!);
                }),
              ),
            ),
          ),
        ));

        items.add(SizedBox(height: 10.0)); // Padding
      }
    }
    return Scaffold(
      backgroundColor: w,
      appBar: AppBar(
        foregroundColor: b,
        backgroundColor: t,
        toolbarHeight: 40,
        title: Align(
            alignment: Alignment.topRight,
            child: Text(
              "sending new ticket to the help center ",
              style: TextStyle(fontSize: 14),
            )),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              shrinkWrap: true,
              children: items,
            ),
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
            key: _formKey,
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
                    controller: _txtControllerBody,
                    keyboardType: TextInputType.multiline,
                    maxLines: 9,
                    validator: (val) =>
                        val!.isEmpty ? 'Post body is required' : null,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "body of the ticket",
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
