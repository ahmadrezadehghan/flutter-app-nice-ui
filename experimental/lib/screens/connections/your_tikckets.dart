import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';

import '../../theme/color.dart';
import '../news/detail_khabar.dart';
import 'new_ticket.dart';

class your_tickets extends StatefulWidget {
  const your_tickets({Key? key}) : super(key: key);

  @override
  State<your_tickets> createState() => _your_ticketsState();
}

class _your_ticketsState extends State<your_tickets>
    with SingleTickerProviderStateMixin {
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isLoading = true;
  late TabController tabController;

  @override
  void dispose() {
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: t,
        foregroundColor: w,
        title: Text("your tickets"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'tickets',
                      maxLines: 1,
                      style: TextStyle(
                          color: Color.fromARGB(255, 83, 83, 83),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Kalameh'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TabBar(
                    controller: tabController,
                    tabs: [
                      Tab(
                        text: 'answered',
                      ),
                      Tab(
                        text: 'all tickets',
                      ),
                      Tab(
                        text: 'waiting',
                      ),
                    ],
                    labelColor: Colors.black,
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        Center(
                          child: Scaffold(
                              extendBodyBehindAppBar: true,
                              body: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: ListView.builder(
                                    itemCount: 4,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5.0,
                                            bottom: 5,
                                            left: 0,
                                            right: 0),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        MagazinePage()));
                                          },
                                          child: Card(
                                            color: w,
                                            elevation: 6,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Container(
                                              height: 200,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 6, horizontal: 0),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 10),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .check_circle,
                                                              size: 17,
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                    "ticket code:",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            10.0,
                                                                        color:
                                                                            t)),
                                                                Text("456772",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            10.0,
                                                                        color:
                                                                            t)),
                                                                SizedBox(
                                                                  width: 40,
                                                                ),
                                                                Text(
                                                                    'location:',
                                                                    style: PersianFonts.Yekan.copyWith(
                                                                        fontSize:
                                                                            11.0,
                                                                        color:
                                                                            t)),
                                                                Text(
                                                                    "country/city",
                                                                    style: PersianFonts.Yekan.copyWith(
                                                                        fontSize:
                                                                            11.0,
                                                                        color:
                                                                            t)),
                                                                Icon(
                                                                  Icons
                                                                      .location_on,
                                                                  color: t,
                                                                  size: 10,
                                                                ),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                        Container(
                                                          height: 0.5,
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          color: t,
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Wrap(
                                                            runAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            alignment:
                                                                WrapAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "ticket title:",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15.0,
                                                                      color:
                                                                          t)),
                                                              Text(
                                                                  "problem with sth",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15.0,
                                                                      color:
                                                                          t)),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Container(
                                                                height: 0.5,
                                                                width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                                color: t,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 20,
                                                        ),
                                                        Wrap(
                                                          alignment:
                                                              WrapAlignment.end,
                                                          children: [
                                                            Text("summery:",
                                                                style: PersianFonts
                                                                        .Yekan
                                                                    .copyWith(
                                                                        fontSize:
                                                                            14.0,
                                                                        color:
                                                                            t)),
                                                            Text("hi , i cant increase my accounts money",
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                                maxLines: 3,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: PersianFonts
                                                                        .Yekan
                                                                    .copyWith(
                                                                        fontSize:
                                                                            14.0,
                                                                        color:
                                                                            t)),
                                                            SizedBox(
                                                              height: 40,
                                                            ),
                                                            Text("help center : hi,The problem is solved and you can recharge your account from now on ",
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                                maxLines: 3,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: PersianFonts
                                                                        .Yekan
                                                                    .copyWith(
                                                                        fontSize:
                                                                            14.0,
                                                                        color:
                                                                            t)),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Icon(
                                                              Icons.ac_unit,
                                                              color: w,
                                                              size: 20,
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                        ),
                                                        Container(
                                                          height: 0.5,
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          color: t,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                                "Registration time: 2021,7,8",
                                                                style: PersianFonts
                                                                        .Shabnam
                                                                    .copyWith(
                                                                        fontSize:
                                                                            10.0,
                                                                        color:
                                                                            t)),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Text("Financial help center ",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: PersianFonts
                                                                        .Yekan
                                                                    .copyWith(
                                                                        fontSize:
                                                                            9.0,
                                                                        color:
                                                                            t)),
                                                            Text("Category:",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: PersianFonts
                                                                        .Yekan
                                                                    .copyWith(
                                                                        fontSize:
                                                                            10.0,
                                                                        color:
                                                                            t)),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                              )),
                        ),
                        Center(
                          child: Scaffold(
                              extendBodyBehindAppBar: true,
                              body: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: ListView.builder(
                                    itemCount: 4,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5.0,
                                            bottom: 5,
                                            left: 0,
                                            right: 0),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        MagazinePage()));
                                          },
                                          child: Card(
                                            color: w,
                                            elevation: 6,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Container(
                                              height: 200,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 6, horizontal: 0),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 10),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                    "ticket code:",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            10.0,
                                                                        color:
                                                                            t)),
                                                                Text("456772",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            10.0,
                                                                        color:
                                                                            t)),
                                                                SizedBox(
                                                                  width: 40,
                                                                ),
                                                                Text(
                                                                    'location:',
                                                                    style: PersianFonts.Yekan.copyWith(
                                                                        fontSize:
                                                                            11.0,
                                                                        color:
                                                                            t)),
                                                                Text(
                                                                    "country/city",
                                                                    style: PersianFonts.Yekan.copyWith(
                                                                        fontSize:
                                                                            11.0,
                                                                        color:
                                                                            t)),
                                                                Icon(
                                                                  Icons
                                                                      .location_on,
                                                                  color: t,
                                                                  size: 10,
                                                                ),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                        Container(
                                                          height: 0.5,
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          color: t,
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Wrap(
                                                            runAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            alignment:
                                                                WrapAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "ticket title:",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15.0,
                                                                      color:
                                                                          t)),
                                                              Text(
                                                                  "problem with sth",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15.0,
                                                                      color:
                                                                          t)),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Container(
                                                                height: 0.5,
                                                                width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                                color: t,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 20,
                                                        ),
                                                        Wrap(
                                                          alignment:
                                                              WrapAlignment.end,
                                                          children: [
                                                            Text("summery:",
                                                                style: PersianFonts
                                                                        .Yekan
                                                                    .copyWith(
                                                                        fontSize:
                                                                            14.0,
                                                                        color:
                                                                            t)),
                                                            Text("hi , i cant increase my accounts money",
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                                maxLines: 3,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: PersianFonts
                                                                        .Yekan
                                                                    .copyWith(
                                                                        fontSize:
                                                                            14.0,
                                                                        color:
                                                                            t)),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Icon(
                                                              Icons.ac_unit,
                                                              color: w,
                                                              size: 20,
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                        ),
                                                        Container(
                                                          height: 0.5,
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          color: t,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                                "Registration time: 2021,7,8",
                                                                style: PersianFonts
                                                                        .Shabnam
                                                                    .copyWith(
                                                                        fontSize:
                                                                            10.0,
                                                                        color:
                                                                            t)),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Text("Financial help center ",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: PersianFonts
                                                                        .Yekan
                                                                    .copyWith(
                                                                        fontSize:
                                                                            9.0,
                                                                        color:
                                                                            t)),
                                                            Text("Category:",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: PersianFonts
                                                                        .Yekan
                                                                    .copyWith(
                                                                        fontSize:
                                                                            10.0,
                                                                        color:
                                                                            t)),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                              )),
                        ),
                        Center(
                          child: Scaffold(
                              extendBodyBehindAppBar: true,
                              body: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: ListView.builder(
                                    itemCount: 4,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5.0,
                                            bottom: 5,
                                            left: 0,
                                            right: 0),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        MagazinePage()));
                                          },
                                          child: Card(
                                            color: w,
                                            elevation: 6,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Container(
                                              height: 200,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 6, horizontal: 0),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 10),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Icon(
                                                              Icons.timelapse,
                                                              size: 18,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      185,
                                                                      147,
                                                                      35),
                                                            ),
                                                            Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                    "ticket code:",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            10.0,
                                                                        color:
                                                                            t)),
                                                                Text("456772",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            10.0,
                                                                        color:
                                                                            t)),
                                                                SizedBox(
                                                                  width: 40,
                                                                ),
                                                                Text(
                                                                    'location:',
                                                                    style: PersianFonts.Yekan.copyWith(
                                                                        fontSize:
                                                                            11.0,
                                                                        color:
                                                                            t)),
                                                                Text(
                                                                    "country/city",
                                                                    style: PersianFonts.Yekan.copyWith(
                                                                        fontSize:
                                                                            11.0,
                                                                        color:
                                                                            t)),
                                                                Icon(
                                                                  Icons
                                                                      .location_on,
                                                                  color: t,
                                                                  size: 10,
                                                                ),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                        Container(
                                                          height: 0.5,
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          color: t,
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Wrap(
                                                            runAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            alignment:
                                                                WrapAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "ticket title:",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15.0,
                                                                      color:
                                                                          t)),
                                                              Text(
                                                                  "problem with sth",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15.0,
                                                                      color:
                                                                          t)),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Container(
                                                                height: 0.5,
                                                                width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                                color: t,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 20,
                                                        ),
                                                        Wrap(
                                                          alignment:
                                                              WrapAlignment.end,
                                                          children: [
                                                            Text("summery:",
                                                                style: PersianFonts
                                                                        .Yekan
                                                                    .copyWith(
                                                                        fontSize:
                                                                            14.0,
                                                                        color:
                                                                            t)),
                                                            Text("hi , i cant increase my accounts money",
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                                maxLines: 3,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: PersianFonts
                                                                        .Yekan
                                                                    .copyWith(
                                                                        fontSize:
                                                                            14.0,
                                                                        color:
                                                                            t)),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Icon(
                                                              Icons.ac_unit,
                                                              color: w,
                                                              size: 20,
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                        ),
                                                        Container(
                                                          height: 0.5,
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          color: t,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                                "Registration time: 2021,7,8",
                                                                style: PersianFonts
                                                                        .Shabnam
                                                                    .copyWith(
                                                                        fontSize:
                                                                            10.0,
                                                                        color:
                                                                            t)),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Text("Financial help center ",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: PersianFonts
                                                                        .Yekan
                                                                    .copyWith(
                                                                        fontSize:
                                                                            9.0,
                                                                        color:
                                                                            t)),
                                                            Text("Category:",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: PersianFonts
                                                                        .Yekan
                                                                    .copyWith(
                                                                        fontSize:
                                                                            10.0,
                                                                        color:
                                                                            t)),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.greenAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.add_circle,
                            color: t,
                            size: 17,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => new_ticket()),
                            );
                          },
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => new_ticket()),
                                      );
                                    },
                                  text: 'send new ticket',
                                  style: TextStyle(color: t, fontSize: 16))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
