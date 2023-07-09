// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

import '../../theme/color.dart';
import 'edit_profile.dart';
import 'settings.dart';

class pf extends StatefulWidget {
  @override
  State<pf> createState() => _pfState();
}

class _pfState extends State<pf> {
  final TextEditingController searchController = TextEditingController();
  bool isShowUsers = false;
  int _currentIndex = 100;
  List<dynamic> _postList = [];
  List<dynamic> _postListuser = [];
  int userId = 0;
  bool _loading = true;

  List<Widget> _randomChildren = [];

  List<Widget> _randomHeightWidgets(BuildContext context) {
    _randomChildren = List.generate(1, (index) {
      return Container(
        color: w,
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      child: Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('assets/images/me2.jpg'),
                                fit: BoxFit.cover),
                            color: const Color.fromARGB(255, 186, 186, 186)),
                      ),
                      onTap: () {
                        showGeneralDialog(
                          context: context,
                          barrierColor:
                              Color.fromARGB(219, 0, 0, 0), // Background color
                          barrierDismissible: false,
                          barrierLabel: 'Dialog',
                          transitionDuration: Duration(milliseconds: 100),
                          pageBuilder: (_, __, ___) {
                            return Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 10,
                                  child: SizedBox.expand(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          alignment: Alignment(0, -0.6),
                                          image: AssetImage(
                                              'assets/images/me2.jpg'),
                                          fit: BoxFit.contain,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(widget_curve),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: SizedBox.expand(
                                    child: ElevatedButton(
                                      style:
                                          ElevatedButton.styleFrom(primary: g),
                                      onPressed: () => Navigator.pop(context),
                                      child: Text(
                                        'exit',
                                        style: TextStyle(color: t),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Container(
                    height: 90,
                    width: MediaQuery.of(context).size.width - 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(1),
                              child: Text(
                                _postListuser.length.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: g,
                                    fontFamily: 'Metropolis'),
                              ),
                            ),
                            Text(
                              "posts",
                              style: TextStyle(
                                  color: t,
                                  fontFamily: 'Metropolis',
                                  fontSize: 10),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(1),
                                child: Text(
                                  '100',
                                  style: TextStyle(
                                      color: g,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      fontFamily: 'Metropolis'),
                                ),
                              ),
                              Text(
                                "followers",
                                style: TextStyle(
                                    color: t,
                                    fontFamily: 'Metropolis',
                                    fontSize: 10),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(1),
                                child: Text(
                                  '100',
                                  style: TextStyle(
                                      color: g,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      fontFamily: 'Metropolis'),
                                ),
                              ),
                              Text(
                                'following',
                                style: TextStyle(
                                    color: t,
                                    fontFamily: 'Metropolis',
                                    fontSize: 10),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    overflow: TextOverflow.clip,
                    strutStyle: StrutStyle(fontSize: 12.0),
                    text: TextSpan(
                        style: TextStyle(color: t, fontFamily: 'Metropolis'),
                        text: "username"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    overflow: TextOverflow.clip,
                    strutStyle: StrutStyle(fontSize: 12.0),
                    text: TextSpan(
                        style: TextStyle(color: t, fontFamily: 'Metropolis'),
                        text:
                            "An application developer is an information technology professional who uses their knowledge of computer systems and programming languages to create user-friendly software applications for computers, mobile devices and other technologies 1. Application developers have a wide variety of responsibilities related to managing an application lifecycle, including understanding the requirements of the client to create specifications for applications they’re going to develop, creating prototypes for the application according to the specifications, writing quality code to create the completed applications within a set amount of time, performing testing before launch, troubleshooting and debugging the application, evaluating existing applications and adding new features, reprogramming them or completing updates, and developing documents and handbooks that represent the design and code for the application . unlimited text..."),
                  ),
                ),
              ),
              //qaz963qaz963
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        height: 30,
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: t, width: 0.4),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => p_edit()));
                            },
                            child: Text(
                              "edit profile",
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 11,
                                color: t,
                              ),
                            )),
                      ),
                    )),
                    Expanded(
                        child: Container(
                      height: 30,
                      child: OutlinedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => wallet()),
                            // );
                          },
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(color: t, width: 0.4)),
                          child: Text(
                            'wallet',
                            style: TextStyle(
                              fontSize: 11,
                              color: t,
                            ),
                          )),
                    )),
                    Expanded(
                        child: Container(
                      height: 30,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(color: t, width: 0.4)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => z_setting1()),
                            );
                          },
                          child: Text(
                            'settings',
                            style: TextStyle(
                              fontSize: 11,
                              color: t,
                            ),
                          )),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });

    return _randomChildren;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Persistent AppBar that never scrolls
      appBar: AppBar(
        title: Text(
          "account",
          style: TextStyle(fontSize: 12),
        ),
        elevation: 1,
        foregroundColor: t,
        toolbarHeight: 35,
        backgroundColor: w,
        centerTitle: true,
      ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          // allows you to build a list of elements that would be scrolled away till the body reached the top
          headerSliverBuilder: (context, value) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  _randomHeightWidgets(context),
                ),
              ),
            ];
          },
          // You tab view goes here
          body: Column(
            children: <Widget>[
              TabBar(
                labelColor: t,
                tabs: [
                  Tab(text: 'A'),
                  Tab(text: 'B'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    GridView.count(
                      padding: EdgeInsets.zero,
                      crossAxisCount: 3,
                      children: Colors.primaries.map((color) {
                        return Container(color: color, height: 150.0);
                      }).toList(),
                    ),
                    ListView(
                      padding: EdgeInsets.zero,
                      children: Colors.primaries.map((color) {
                        return Container(color: color, height: 150.0);
                      }).toList(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
