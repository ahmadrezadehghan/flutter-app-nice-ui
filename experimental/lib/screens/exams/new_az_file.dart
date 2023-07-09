import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';

import '../../theme/color.dart';
import '../../widgets/buttons.dart';
import '../../widgets/card_widget.dart';
import '../../widgets/text.dart';

class new_az_file extends StatefulWidget {
  @override
  _new_az_fileState createState() => _new_az_fileState();
}

class _new_az_fileState extends State<new_az_file> {
  List<Color> color_select = [w, w, w, w];
  List<bool> act_qustion = [false, false, false, false];
  List<Icon> set_qustion = [
    Icon(
      Icons.check_box_outline_blank,
      color: t,
    ),
    Icon(
      Icons.check_box_outline_blank,
      color: t,
    ),
    Icon(
      Icons.check_box_outline_blank,
      color: t,
    ),
    Icon(
      Icons.check_box_outline_blank,
      color: t,
    )
  ];
  List<Color> color_select2 = [
    w,
    w,
    w,
    w,
    w,
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 38,
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
                        card_sade_border(
                          w_: MediaQuery.of(context).size.width - 20,
                          h_: 100,
                          color_: w,
                          crop_: 15,
                          color_border: t.withOpacity(0.3),
                          child_: Column(
                            children: [
                              Text("Select the type of question",
                                  style: PersianFonts.Shabnam.copyWith(
                                      fontSize: 13.0, color: t)),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          color_select[0] = Colors.greenAccent;
                                          color_select[1] = w;
                                          color_select[2] = w;
                                          color_select[3] = w;

                                          act_qustion = [
                                            true,
                                            true,
                                            true,
                                            true
                                          ];
                                        });
                                      },
                                      child: card_sade_border(
                                        w_: 60,
                                        h_: 60,
                                        color_: color_select[0],
                                        crop_: 10,
                                        color_border: t,
                                        child_: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Icon(
                                              Icons.looks_4_outlined,
                                              color: t,
                                              size: 30,
                                            ),
                                            Text("four options",
                                                style: PersianFonts.Shabnam
                                                    .copyWith(
                                                        fontSize: 12.0,
                                                        color: t)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          color_select[0] = w;
                                          color_select[1] = Colors.greenAccent;
                                          color_select[2] = w;
                                          color_select[3] = w;

                                          act_qustion = [
                                            true,
                                            true,
                                            true,
                                            false
                                          ];
                                        });
                                      },
                                      child: card_sade_border(
                                        w_: 60,
                                        h_: 60,
                                        color_: color_select[1],
                                        crop_: 10,
                                        color_border: t,
                                        child_: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Icon(
                                              Icons.looks_3_outlined,
                                              color: t,
                                              size: 30,
                                            ),
                                            Text("three options",
                                                style: PersianFonts.Shabnam
                                                    .copyWith(
                                                        fontSize: 12.0,
                                                        color: t)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          color_select[0] = w;
                                          color_select[1] = w;
                                          color_select[2] = Colors.greenAccent;
                                          ;
                                          color_select[3] = w;
                                          act_qustion = [
                                            true,
                                            true,
                                            false,
                                            false
                                          ];
                                        });
                                      },
                                      child: card_sade_border(
                                        w_: 60,
                                        h_: 60,
                                        color_: color_select[2],
                                        crop_: 10,
                                        color_border: t,
                                        child_: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Icon(
                                              Icons.check_box,
                                              color: t,
                                              size: 30,
                                            ),
                                            Text("true/false",
                                                style: PersianFonts.Shabnam
                                                    .copyWith(
                                                        fontSize: 12.0,
                                                        color: t)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          color_select[0] = w;
                                          color_select[1] = w;
                                          color_select[2] = w;
                                          color_select[3] = Colors.greenAccent;
                                          act_qustion = [
                                            true,
                                            false,
                                            false,
                                            false
                                          ];
                                        });
                                      },
                                      child: card_sade_border(
                                        w_: 60,
                                        h_: 60,
                                        color_: color_select[3],
                                        crop_: 10,
                                        color_border: t,
                                        child_: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Icon(
                                              Icons.linear_scale,
                                              color: t,
                                              size: 30,
                                            ),
                                            Text("Dotted ",
                                                style: PersianFonts.Shabnam
                                                    .copyWith(
                                                        fontSize: 12.0,
                                                        color: t)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        //++++++++++++++++++++++++++++++-
                        Column(children: [
                          text_fild_me_multi_line(
                            line_: 4,
                            onChanged_: (val) {
                              setState(() {});
                            },
                            label_: "Question full text",
                            hiden_text: " ",
                            keyboardType_: TextInputType.text,
                            icon_: Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            act_icon: true,
                          ),
                          Visibility(
                            visible: act_qustion[0],
                            child: text_fild_icon_me(
                                onPressed: () {
                                  setState(() {
                                    set_qustion[0] = Icon(
                                      Icons.check_box,
                                      color: t,
                                    );
                                    set_qustion[1] = Icon(
                                      Icons.check_box_outline_blank,
                                      color: t,
                                    );
                                    set_qustion[2] = Icon(
                                      Icons.check_box_outline_blank,
                                      color: t,
                                    );
                                    set_qustion[3] = Icon(
                                      Icons.check_box_outline_blank,
                                      color: t,
                                    );
                                  });
                                },
                                tedit_: TextEditingController(),
                                onChanged_: (val) {},
                                label_: "first response text",
                                hiden_text: " ",
                                keyboardType_: TextInputType.text,
                                icon_: set_qustion[0]),
                          ),
                          Visibility(
                            visible: act_qustion[1],
                            child: text_fild_icon_me(
                                tedit_: TextEditingController(),
                                onPressed: () {
                                  setState(() {
                                    set_qustion[1] = Icon(
                                      Icons.check_box,
                                      color: t,
                                    );
                                    set_qustion[0] = Icon(
                                      Icons.check_box_outline_blank,
                                      color: t,
                                    );
                                    set_qustion[2] = Icon(
                                      Icons.check_box_outline_blank,
                                      color: t,
                                    );
                                    set_qustion[3] = Icon(
                                      Icons.check_box_outline_blank,
                                      color: t,
                                    );
                                  });
                                },
                                onChanged_: (val) {
                                  setState(() {});
                                },
                                label_: "second response text",
                                hiden_text: " ",
                                keyboardType_: TextInputType.text,
                                icon_: set_qustion[1]),
                          ),
                          Visibility(
                            visible: act_qustion[2],
                            child: text_fild_icon_me(
                                onPressed: () {
                                  setState(() {
                                    set_qustion[2] = Icon(
                                      Icons.check_box,
                                      color: t,
                                    );
                                    set_qustion[1] = Icon(
                                      Icons.check_box_outline_blank,
                                      color: t,
                                    );
                                    set_qustion[0] = Icon(
                                      Icons.check_box_outline_blank,
                                      color: t,
                                    );
                                    set_qustion[3] = Icon(
                                      Icons.check_box_outline_blank,
                                      color: t,
                                    );
                                  });
                                },
                                tedit_: TextEditingController(),
                                onChanged_: (val) {
                                  setState(() {});
                                },
                                label_: "text of the third answer",
                                hiden_text: " ",
                                keyboardType_: TextInputType.text,
                                icon_: set_qustion[2]),
                          ),
                          Visibility(
                            visible: act_qustion[3],
                            child: text_fild_icon_me(
                                tedit_: TextEditingController(),
                                onPressed: () {
                                  setState(() {
                                    set_qustion[3] = Icon(
                                      Icons.check_box,
                                      color: t,
                                    );
                                    set_qustion[1] = Icon(
                                      Icons.check_box_outline_blank,
                                      color: t,
                                    );
                                    set_qustion[2] = Icon(
                                      Icons.check_box_outline_blank,
                                      color: t,
                                    );
                                    set_qustion[0] = Icon(
                                      Icons.check_box_outline_blank,
                                      color: t,
                                    );
                                  });
                                },
                                onChanged_: (val) {
                                  setState(() {});
                                },
                                label_: "text of the fourth answer",
                                hiden_text: " ",
                                keyboardType_: TextInputType.text,
                                icon_: set_qustion[3]),
                          ),
                        ]),
                        card_sade_border(
                          w_: MediaQuery.of(context).size.width - 40,
                          h_: 80,
                          color_: w,
                          crop_: 15,
                          color_border: t.withOpacity(0.3),
                          child_: Column(
                            children: [
                              Text("Question Difficulty Level",
                                  style: PersianFonts.Shabnam.copyWith(
                                      fontSize: 13.0, color: t)),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          color_select2[0] = Colors.greenAccent;
                                          color_select2[1] = w;
                                          color_select2[2] = w;
                                          color_select2[3] = w;
                                          color_select2[4] = w;
                                        });
                                      },
                                      child: card_sade_border(
                                        w_: 25,
                                        h_: 25,
                                        color_: color_select2[0],
                                        crop_: 10,
                                        color_border: t,
                                        child_: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Icon(
                                              Icons.looks_one,
                                              color: t,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          color_select2[0] = w;
                                          color_select2[1] = Colors.greenAccent;
                                          color_select2[2] = w;
                                          color_select2[3] = w;
                                          color_select2[4] = w;
                                        });
                                      },
                                      child: card_sade_border(
                                        w_: 25,
                                        h_: 25,
                                        color_: color_select2[1],
                                        crop_: 10,
                                        color_border: t,
                                        child_: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Icon(
                                              Icons.looks_two,
                                              color: t,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          color_select2[0] = w;
                                          color_select2[1] = w;
                                          color_select2[2] = Colors.greenAccent;
                                          color_select2[3] = w;
                                          color_select2[4] = w;
                                        });
                                      },
                                      child: card_sade_border(
                                        w_: 25,
                                        h_: 25,
                                        color_: color_select2[2],
                                        crop_: 10,
                                        color_border: t,
                                        child_: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Icon(
                                              Icons.looks_3,
                                              color: t,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          color_select2[0] = w;
                                          color_select2[1] = w;
                                          color_select2[2] = w;
                                          color_select2[3] = Colors.greenAccent;
                                          color_select2[4] = w;
                                        });
                                      },
                                      child: card_sade_border(
                                        w_: 25,
                                        h_: 25,
                                        color_: color_select2[3],
                                        crop_: 10,
                                        color_border: t,
                                        child_: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Icon(
                                              Icons.looks_4,
                                              color: t,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          color_select2[0] = w;
                                          color_select2[1] = w;
                                          color_select2[2] = w;
                                          color_select2[3] = w;
                                          color_select2[4] = Colors.greenAccent;
                                        });
                                      },
                                      child: card_sade_border(
                                        w_: 25,
                                        h_: 25,
                                        color_: color_select2[4],
                                        crop_: 10,
                                        color_border: t,
                                        child_: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Icon(
                                              Icons.looks_5,
                                              color: t,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        btn_me4(
                          size_font: 14,
                          text_: "Register new question",
                          color_: Colors.greenAccent,
                          width_: MediaQuery.of(context).size.width - 20,
                          height_: 60,
                          onPressed: () async {
                            Navigator.of(context).pop();
                          },
                        ),
                        SizedBox(
                          height: 25,
                        ),
                      ],
                    )),
              );
            },
          ),
        ));
  }
}

class App_bar_kala extends StatelessWidget {
  const App_bar_kala({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Register new question",
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 15.0,
                color: Color.fromARGB(255, 255, 255, 255))),
        TextButton(
          onPressed: () {},
          child: const Text("",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 13.0,
                  color: Colors.green)),
        )
      ],
    );
  }
}
