import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/exams/new_az_file.dart';
import 'package:flutter_application_1/screens/exams/new_exam.dart';
import 'package:persian_fonts/persian_fonts.dart';

import '../../theme/color.dart';
import '../../widgets/card_widget.dart';

class azmoon extends StatefulWidget {
  @override
  _azmoonState createState() => _azmoonState();
}

class _azmoonState extends State<azmoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: w,
        toolbarHeight: 35,
        backgroundColor: t,
        title: App_bar_kala(),
      ),
      backgroundColor: b,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: const BoxConstraints(),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  card_home_page(
                    icon1: const Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                      color: Color.fromARGB(255, 119, 119, 119),
                    ),
                    text_: "Define new tests",
                    text_number: " 19/300/400",
                    color_: w,
                    Image_1: "3.png",
                    color_Text_number: t,
                    color_Text_: t,
                    view_num: false,
                    onTap_: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => new_azmoon()),
                      );
                    },
                  ),
                  card_home_page(
                    icon1: const Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                      color: Color.fromARGB(255, 119, 119, 119),
                    ),
                    text_: "Create new test file",
                    text_number: " 19/300/400",
                    color_: w,
                    Image_1: "3.png",
                    color_Text_number: t,
                    color_Text_: t,
                    view_num: false,
                    onTap_: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => new_az_file()),
                      );
                    },
                  ),
                  Container(
                    child: list_kala(),
                    height: MediaQuery.of(context).size.height,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class App_bar_kala extends StatelessWidget {
  const App_bar_kala({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 1,
        ),
        Text("List of exams ",
            style: TextStyle(
                fontWeight: FontWeight.w900, fontSize: 16.0, color: w)),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_book_outlined,
              color: w,
            )),
      ],
    );
  }
}

class list_kala extends StatelessWidget {
  const list_kala({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      //Error number 2

      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text(" sort list",
              style: PersianFonts.Shabnam.copyWith(fontSize: 15.0, color: t));
        } else if (snapshot.connectionState == ConnectionState.done) {
          return Text('done');
        } else if (snapshot.hasError) {
          return Text('Error!');
        } else {
          return ListView(
            padding: EdgeInsets.all(10),
            children: Colors.primaries.map((color) {
              return Container(
                color: color,
                height: 150.0,
                child: Center(child: Text(' exams  will be here')),
              );
            }).toList(),
          );
        }
      },
    );
  }
}
