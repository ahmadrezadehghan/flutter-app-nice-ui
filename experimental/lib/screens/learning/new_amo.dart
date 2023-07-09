import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_fonts/persian_fonts.dart';

import '../../theme/color.dart';
import '../../widgets/buttons.dart';
import '../../widgets/card_widget.dart';
import '../../widgets/text.dart';
import 'home-learning.dart';

class new_part_learn extends StatefulWidget {
  @override
  _new_part_learnState createState() => _new_part_learnState();
}

class _new_part_learnState extends State<new_part_learn> {
  List<Color> color_select = [Colors.white10, Colors.white10, Colors.white10];
  List<int> count = [0, 0, 0];
  String dasteha = "Specify course category";
  String monaseb = "Who is this course suitable for?";

  List<String> horof = ["a", "b", "c", "d", "etc"];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 35,
          backgroundColor: t,
          title: App_bar_kala(),
        ),
        backgroundColor: b,
        body: DefaultTextStyle(
          style: Theme.of(context).textTheme.bodyMedium!,
          child: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                    constraints: const BoxConstraints(),
                    child: Column(
                      children: [
                        Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
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
                              width: MediaQuery.of(context).size.width * 0.92,
                              child: ListTile(
                                  tileColor: Color.fromARGB(255, 49, 49, 49),
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color:
                                            Color.fromARGB(255, 161, 161, 161),
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  title: Text(monaseb,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: t,
                                      )),
                                  onTap: () async {
                                    showcat3(context);

                                    //index would be for the data you wanna use
                                  }),
                            ),
                          ),
                          text_fild_me_3(
                            onChanged_: (val) {
                              setState(() {});
                            },
                            label_: "Course name",
                            hiden_text: "",
                            keyboardType_: TextInputType.text,
                            icon_: Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            act_icon: true,
                          ),
                        ]),
                        text_fild_me_multi_line(
                          line_: 4,
                          onChanged_: (val) {
                            setState(() {});
                          },
                          label_:
                              "Additional details / full text of the training course",
                          hiden_text: " ",
                          keyboardType_: TextInputType.text,
                          icon_: Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          act_icon: true,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        btn_me4(
                          size_font: 14,
                          text_: "New training course registration",
                          color_: Colors.greenAccent,
                          width_: MediaQuery.of(context).size.width - 20,
                          height_: 60,
                          onPressed: () {
                            showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(10.0))),
                                backgroundColor: b,
                                context: context,
                                isScrollControlled: true,
                                builder: (context) => Padding(
                                    padding: EdgeInsets.only(
                                        bottom: MediaQuery.of(context)
                                            .viewInsets
                                            .bottom),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Container(
                                          color: Colors.white10,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              10,
                                          height: 2,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        btn_me1(
                                            text_: "select files",
                                            color_: Colors.amberAccent,
                                            width_: MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                20,
                                            height_: 60,
                                            onPressed: () {
                                              showModalBottomSheet(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.vertical(
                                                            top:
                                                                Radius.circular(
                                                                    10.0))),
                                                backgroundColor:
                                                    const Color.fromARGB(
                                                        255, 229, 229, 229),
                                                context: context,
                                                isScrollControlled: true,
                                                builder: (context) =>
                                                    LayoutBuilder(
                                                  builder: (BuildContext
                                                          context,
                                                      BoxConstraints
                                                          viewportConstraints) {
                                                    return SingleChildScrollView(
                                                      child: ConstrainedBox(
                                                          constraints:
                                                              BoxConstraints(),
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  bottom: MediaQuery.of(
                                                                          context)
                                                                      .viewInsets
                                                                      .bottom),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: <Widget>[
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                            .all(
                                                                        10.0),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.end,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.end,
                                                                          children: [
                                                                            const Align(
                                                                              alignment: Alignment.centerRight,
                                                                              child: Text("Searching and selecting a file from the list of all available files", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 12.0, color: Color.fromARGB(179, 50, 50, 50))),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            47,
                                                                            47,
                                                                            47),
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width -
                                                                        10,
                                                                    height: 0.5,
                                                                  ),
                                                                  const SizedBox(
                                                                    height: 0,
                                                                  ),
                                                                  text_fild_me_3(
                                                                    icon_: Icon(
                                                                      Icons
                                                                          .star,
                                                                      color: Colors
                                                                          .yellow,
                                                                    ),
                                                                    act_icon:
                                                                        true,
                                                                    onChanged_:
                                                                        (val) {},
                                                                    label_:
                                                                        'search list',
                                                                    hiden_text:
                                                                        '',
                                                                    keyboardType_:
                                                                        TextInputType
                                                                            .text,
                                                                  ),
                                                                  SizedBox(
                                                                    height: 300,
                                                                    child:
                                                                        StreamBuilder(
                                                                      //Error number 2

                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        if (snapshot.connectionState ==
                                                                            ConnectionState
                                                                                .waiting) {
                                                                          return Text(
                                                                              ". . . sort list",
                                                                              style: PersianFonts.Shabnam.copyWith(fontSize: 15.0, color: t));
                                                                        } else if (snapshot.connectionState ==
                                                                            ConnectionState
                                                                                .done) {
                                                                          return Text(
                                                                              'done');
                                                                        } else if (snapshot
                                                                            .hasError) {
                                                                          return Text(
                                                                              'Error!');
                                                                        } else {
                                                                          return ListView.builder(
                                                                              itemCount: 10,
                                                                              itemBuilder: (BuildContext context, int index) {
                                                                                return card_home_page(
                                                                                    icon1: Icon(
                                                                                      Icons.check_box,
                                                                                      color: Color.fromARGB(255, 197, 197, 197),
                                                                                    ),
                                                                                    text_: "Accounting training / Professor alex ${(index + 1)} ",
                                                                                    text_number: (index + 1).toString(),
                                                                                    color_: const Color.fromARGB(255, 255, 255, 255),
                                                                                    Image_1: "f1.png",
                                                                                    color_Text_number: Color.fromARGB(255, 177, 177, 177),
                                                                                    color_Text_: t,
                                                                                    view_num: false);
                                                                              });
                                                                        }
                                                                      },
                                                                    ),
                                                                  ),
                                                                  btn_me4(
                                                                    size_font:
                                                                        14,
                                                                    text_:
                                                                        "Confirm selected files",
                                                                    color_: Colors
                                                                        .greenAccent,
                                                                    width_: MediaQuery.of(context)
                                                                            .size
                                                                            .width -
                                                                        20,
                                                                    height_: 60,
                                                                    onPressed:
                                                                        () {
                                                                      Get.off(
                                                                          home_page_learn());
                                                                    },
                                                                  ),
                                                                  const SizedBox(
                                                                    height: 20,
                                                                  ),
                                                                ],
                                                              ))),
                                                    );
                                                  },
                                                ),
                                              );
                                              //   Get.off(home_page_learn());
                                            },
                                            icon_: Icons.folder_copy,
                                            size_font: 15),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        btn_me1(
                                            text_: "New course registration",
                                            color_: Colors.greenAccent,
                                            width_: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height_: 60,
                                            onPressed: () {
                                              Get.off(home_page_learn());
                                            },
                                            icon_: Icons.done,
                                            size_font: 15),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        btn_me1(
                                            text_: "opt out",
                                            color_: Colors.red.shade300,
                                            width_: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height_: 60,
                                            onPressed: () {
                                              Get.off(home_page_learn());
                                            },
                                            icon_: Icons.clear,
                                            size_font: 15),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                      ],
                                    )));
                          },
                        ),
                      ],
                    )),
              );
            },
          ),
        ));
  }

  void showcat(BuildContext parentContext) async {
    return showDialog(
      context: parentContext,
      builder: (BuildContext context) {
        return SimpleDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: b,
          alignment: Alignment.center,
          title: Container(
            padding: EdgeInsets.all(17),
            decoration: BoxDecoration(
              color: w,
              border: Border.all(
                  color: t, // Set border color
                  width: 1.0), // Set border width
              borderRadius: BorderRadius.all(
                  Radius.circular(15)), // Set rounded corner radius
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 110, 110, 110),
                  blurRadius: 5,
                  offset: Offset(0, 0), // Shadow position
                ),
              ], // Make rounded corner of border
            ),
            child: Center(
              child: Text(
                "Specify Course Category",
                maxLines: 1,
                style: TextStyle(
                  fontSize: 13,
                  color: Color.fromARGB(255, 68, 68, 68),
                ),
              ),
            ),
          ),
          children: <Widget>[
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 182, 182, 182),
            ),
            Center(
              child: SimpleDialogOption(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'accounting',
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 13,
                      color: t,
                    ),
                  ),
                  onPressed: () async {
                    Navigator.pop(context);

                    setState(() {
                      dasteha = 'accounting';
                    });
                  }),
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 182, 182, 182),
            ),
            Center(
              child: SimpleDialogOption(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "economic",
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 13,
                      color: t,
                    ),
                  ),
                  onPressed: () async {
                    Navigator.of(context).pop();

                    setState(() {
                      dasteha = "Economic";
                    });
                  }),
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 182, 182, 182),
            ),
            Center(
              child: SimpleDialogOption(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "cultural",
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 13,
                      color: t,
                    ),
                  ),
                  onPressed: () async {
                    Navigator.of(context).pop();

                    setState(() {
                      dasteha = "cultural";
                    });
                  }),
            ),
          ],
        );
      },
    );
  }

  void showcat2(BuildContext parentContext) async {
    return showDialog(
      context: parentContext,
      builder: (BuildContext context) {
        return SimpleDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: b,
          alignment: Alignment.center,
          title: Container(
            padding: EdgeInsets.all(17),
            decoration: BoxDecoration(
              color: w,
              border: Border.all(
                  color: t, // Set border color
                  width: 1.0), // Set border width
              borderRadius: BorderRadius.all(
                  Radius.circular(15)), // Set rounded corner radius
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 110, 110, 110),
                  blurRadius: 5,
                  offset: Offset(0, 0), // Shadow position
                ),
              ], // Make rounded corner of border
            ),
            child: Center(
              child: Text(
                "Please select the ad category you want.",
                maxLines: 1,
                style: TextStyle(
                  fontSize: 13,
                  color: Color.fromARGB(255, 68, 68, 68),
                ),
              ),
            ),
          ),
          children: <Widget>[
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 182, 182, 182),
            ),
            Center(
              child: SimpleDialogOption(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'General',
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 13,
                      color: t,
                    ),
                  ),
                  onPressed: () async {
                    Navigator.pop(context);

                    setState(() {
                      dasteha = 'General';
                    });
                  }),
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 182, 182, 182),
            ),
            Center(
              child: SimpleDialogOption(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Shop",
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 13,
                      color: t,
                    ),
                  ),
                  onPressed: () async {
                    Navigator.of(context).pop();

                    setState(() {
                      dasteha = "Shop";
                    });
                  }),
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 182, 182, 182),
            ),
            Center(
              child: SimpleDialogOption(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "official",
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 13,
                      color: t,
                    ),
                  ),
                  onPressed: () async {
                    Navigator.of(context).pop();

                    setState(() {
                      dasteha = "official";
                    });
                  }),
            ),
          ],
        );
      },
    );
  }

  void showcat3(BuildContext parentContext) async {
    return showDialog(
      context: parentContext,
      builder: (BuildContext context) {
        return SimpleDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: b,
          alignment: Alignment.center,
          title: Container(
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: w,
              // Set border width
              // Set rounded corner radius
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 110, 110, 110),
                  blurRadius: 5,
                  offset: Offset(0, 0), // Shadow position
                ),
              ], // Make rounded corner of border
            ),
            child: Center(
              child: Text(
                "Who is this course suitable for?",
                maxLines: 1,
                style: TextStyle(
                  fontSize: 13,
                  color: Color.fromARGB(255, 68, 68, 68),
                ),
              ),
            ),
          ),
          children: <Widget>[
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 182, 182, 182),
            ),
            Center(
              child: SimpleDialogOption(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'professor',
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 13,
                      color: t,
                    ),
                  ),
                  onPressed: () async {
                    Navigator.pop(context);

                    setState(() {
                      monaseb = 'professor';
                    });
                  }),
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 182, 182, 182),
            ),
            Center(
              child: SimpleDialogOption(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "business owners",
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 13,
                      color: t,
                    ),
                  ),
                  onPressed: () async {
                    Navigator.of(context).pop();

                    setState(() {
                      monaseb = "business owners";
                    });
                  }),
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 182, 182, 182),
            ),
            Center(
              child: SimpleDialogOption(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "accountant",
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 13,
                      color: t,
                    ),
                  ),
                  onPressed: () async {
                    Navigator.of(context).pop();

                    setState(() {
                      monaseb = "accountant";
                    });
                  }),
            ),
          ],
        );
      },
    );
  }
}

class App_bar_kala extends StatelessWidget {
  const App_bar_kala({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Text("New training course",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 15.0,
                  color: const Color.fromARGB(255, 255, 255, 255))),
        ),
        SizedBox(
          width: 0,
        ),
      ],
    );
  }
}
