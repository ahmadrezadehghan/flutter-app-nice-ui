import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_fonts/persian_fonts.dart';
import 'package:popover/popover.dart';

import '../../theme/color.dart';
import '../../widgets/buttons.dart';
import '../../widgets/text.dart';
import 'exam.dart';

class new_azmoon extends StatefulWidget {
  @override
  _new_azmoonState createState() => _new_azmoonState();
}

class _new_azmoonState extends State<new_azmoon> {
  List<Color> color_select = [Colors.white10, Colors.white10, Colors.white10];
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
                            label_: "title of exam",
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
                          label_: "Additional details / full test text",
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
                          text_: "New test registration",
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
                                                                        list_kala(),
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
                                                                          azmoon());
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
                                            text_: "New test registration",
                                            color_: Colors.greenAccent,
                                            width_: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height_: 60,
                                            onPressed: () {
                                              Get.off(azmoon());
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
                                              Get.off(azmoon());
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
                "Specify the test category",
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
                      dasteha = "economic";
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
                'Please select the ad category you want.',
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
                "Who is this test suitable for?",
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

class list_kala extends StatelessWidget {
  const list_kala({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      //Error number 2

      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text(". . . sort list",
              style: PersianFonts.Shabnam.copyWith(fontSize: 15.0, color: t));
        } else if (snapshot.connectionState == ConnectionState.done) {
          return Text('done');
        } else if (snapshot.hasError) {
          return Text('Error!');
        } else {
          return ListView.builder(
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: w,
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    height: 160,
                    margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Button_sub(name_sub: "345"),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text("456772",
                                          style: PersianFonts.Yekan.copyWith(
                                              fontSize: 12.0, color: t)),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(": question code",
                                          style: PersianFonts.Yekan.copyWith(
                                              fontSize: 12.0, color: t)),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                height: 0.5,
                                width: MediaQuery.of(context).size.width,
                                color: t,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Basic Accounting / Audit Concepts",
                                      style: PersianFonts.Yekan.copyWith(
                                          fontSize: 13.0, color: t)),
                                  Text(":Question Category ",
                                      style: PersianFonts.Yekan.copyWith(
                                          fontSize: 13.0, color: t)),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 0.5,
                                width: MediaQuery.of(context).size.width,
                                color: t,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Wrap(
                                alignment: WrapAlignment.end,
                                children: [
                                  Text(": Question text ",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.clip,
                                      style: PersianFonts.Yekan.copyWith(
                                          fontSize: 12.0, color: t)),
                                  Text(
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.clip,
                                      "In your opinion, artificial intelligence and technological progress can have an impact on the accounting process?",
                                      style: PersianFonts.Yekan.copyWith(
                                          fontSize: 12.0, color: t)),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 0.5,
                                width: MediaQuery.of(context).size.width,
                                color: t,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("4",
                                      style: PersianFonts.Yekan.copyWith(
                                          fontSize: 13.0, color: t)),
                                  Text(
                                      ": degree of difficulty of the question ",
                                      style: PersianFonts.Yekan.copyWith(
                                          fontSize: 12.0, color: t)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              });
        }
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
          child: Text("New Tests",
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

class Button_sub extends StatelessWidget {
  final String name_sub;
  const Button_sub({Key? key, required this.name_sub}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: const Center(
            child: Icon(
          Icons.menu,
          color: Color.fromARGB(255, 45, 45, 45),
          size: 18,
        )),
        onTap: () {
          showPopover(
            context: context,
            bodyBuilder: (context) => ListItems_sub(
              name_sub: name_sub,
            ),
            onPop: () => print('Popover was popped!'),
            direction: PopoverDirection.bottom,
            backgroundColor: Colors.white38,
            width: 170,
            height: 140,
            arrowHeight: 15,
            arrowWidth: 30,
          );
        },
      ),
    );
  }
}

class ListItems_sub extends StatelessWidget {
  final String name_sub;
  const ListItems_sub({Key? key, required this.name_sub}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: [
              btn_me2(
                  size_font: Size_font,
                  text_: "انتخاب",
                  color_: Colors.amberAccent,
                  width_: Size_width,
                  height_: 35,
                  onPressed: () {},
                  icon_: Icon(
                    Icons.done,
                    color: Colors.black,
                    size: 13,
                  )),
              SizedBox(
                height: 10,
              ),
              btn_me2(
                  size_font: Size_font,
                  text_: "حذف",
                  color_: Colors.red.shade200,
                  width_: Size_width,
                  height_: 35,
                  onPressed: () {},
                  icon_: Icon(
                    Icons.clear,
                    color: Colors.black,
                    size: 13,
                  )),
              SizedBox(
                height: 10,
              ),
            ],
          )),
    );
  }
}
