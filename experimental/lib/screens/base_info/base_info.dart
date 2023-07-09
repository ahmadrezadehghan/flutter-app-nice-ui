import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/base_info/help.dart';
import 'package:flutter_application_1/screens/base_info/questions.dart';

import '../../theme/color.dart';
import 'aboutapp.dart';
import 'teachapp.dart';

class base_info extends StatefulWidget {
  @override
  _base_infoState createState() => _base_infoState();
}

class _base_infoState extends State<base_info> {
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
        title: Text('Basic Information'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.22,
                    width: MediaQuery.of(context).size.width * 0.82,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/5.png'),
                      ),
                    )),
              ),
            ),
            MyButton(
              text: 'About software',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aboutapp()),
                );
              },
              icon_: Icons.help,
              color_: Color.fromARGB(255, 19, 112, 218),
            ),
            MyButton(
              text: "Learning to work with the software",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => teachapp()),
                );
              },
              icon_: Icons.menu_book,
              color_: Color.fromARGB(255, 161, 23, 196),
            ),
            MyButton(
              text: 'Frequently Asked Questions',
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => questions()),
                  );
                });
              },
              icon_: Icons.text_snippet,
              color_: Color.fromARGB(255, 26, 187, 80),
            ),
            MyButton(
              text: "Troubleshooting Guide",
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => help()),
                  );
                });
              },
              icon_: Icons.build_circle,
              color_: Color.fromARGB(255, 207, 176, 23),
            ),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final IconData icon_;
  final Color color_;

  const MyButton(
      {required this.text,
      required this.onPressed,
      required this.icon_,
      required this.color_})
      : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: 25.0, left: 25, top: 10, bottom: 10),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: t, // Set border color
                width: 1.0),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 96, 96, 96),
                offset: Offset(0, 0),
                blurRadius: 7,
                spreadRadius: 0.5,
              ),
            ],
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 240, 240, 240),
              Colors.white,
              Color.fromARGB(255, 240, 240, 240),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          width: double.infinity,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(child: Text(text)),
              SizedBox(
                width: 35,
              ),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: color_,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Icon(
                    icon_,
                    color: w,
                    size: 20,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
