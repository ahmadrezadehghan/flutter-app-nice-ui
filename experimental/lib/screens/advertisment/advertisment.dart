import 'package:flutter/material.dart';

import '../../theme/color.dart';
import 'd_t.dart';
import 'h_t.dart';
import 'sh_t.dart';

class advertisment extends StatefulWidget {
  @override
  _advertismentState createState() => _advertismentState();
}

class _advertismentState extends State<advertisment> {
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
        title: Text('ads'),
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
                        image: AssetImage('assets/images/2.png'),
                      ),
                    )),
              ),
            ),
            MyButton(
              text: "request ads",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => d_t()),
                );
              },
              icon_: Icons.campaign,
              color_: Color.fromARGB(255, 19, 112, 218),
            ),
            MyButton(
              text: 'Advertisement complaint',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => sh_t()),
                );
              },
              icon_: Icons.gavel,
              color_: Color.fromARGB(255, 161, 23, 196),
            ),
            MyButton(
              text: 'remove ads',
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => h_t()),
                  );
                });
              },
              icon_: Icons.highlight_off,
              color_: Color.fromARGB(255, 26, 187, 80),
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
