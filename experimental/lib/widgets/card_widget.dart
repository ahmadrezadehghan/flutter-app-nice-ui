import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';

class card_home_page extends StatelessWidget {
  final Widget icon1;
  final String text_;
  final String text_number;
  final Color color_;
  final String Image_1;
  final Color color_Text_number;
  final Color color_Text_;
  final bool view_num;
  final GestureTapCallback? onTap_;

  const card_home_page({
    Key? key,
    required this.icon1,
    required this.text_,
    required this.text_number,
    required this.color_,
    this.onTap_,
    required this.Image_1,
    required this.color_Text_number,
    required this.color_Text_,
    required this.view_num,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap_,
      child: Card(
        color: color_,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      icon1,
                      const SizedBox(
                        width: 5,
                      ),
                      Card(
                        color: Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                            child: Visibility(
                          visible: view_num,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Text(text_number,
                                style: PersianFonts.Shabnam.copyWith(
                                    fontSize: 15.0, color: color_Text_number)),
                          ),
                        )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(text_,
                          style: PersianFonts.Shabnam.copyWith(
                              fontSize: 13.0, color: color_Text_)),
                      const SizedBox(
                        width: 5,
                      ),
                      Card(
                        color: Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          height: 31,
                          width: 31,
                          child: new Image.asset(
                            "assets/images/" + Image_1 + "",
                            width: 30,
                            height: 30,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}

class card_home_page_net extends StatelessWidget {
  final Widget icon1;
  final String text_;
  final String text_number;
  final Color color_;
  final String Image_1;
  final Color color_Text_number;
  final Color color_Text_;
  final bool view_num;
  final GestureTapCallback? onTap_;

  const card_home_page_net({
    Key? key,
    required this.icon1,
    required this.text_,
    required this.text_number,
    required this.color_,
    this.onTap_,
    required this.Image_1,
    required this.color_Text_number,
    required this.color_Text_,
    required this.view_num,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap_,
      child: Card(
        color: color_,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      icon1,
                      const SizedBox(
                        width: 5,
                      ),
                      Card(
                        color: Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                            child: Visibility(
                          visible: view_num,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Text(text_number,
                                style: PersianFonts.Shabnam.copyWith(
                                    fontSize: 15.0, color: color_Text_number)),
                          ),
                        )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(text_,
                          style: PersianFonts.Shabnam.copyWith(
                              fontSize: 13.0, color: color_Text_)),
                      const SizedBox(
                        width: 5,
                      ),
                      Card(
                        color: Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          height: 31,
                          width: 31,
                          child: Image.network(
                            Image_1,
                            width: 30,
                            height: 30,
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) {
                              return Image.asset('assets/images/logo.png',
                                  width: 30, height: 30, fit: BoxFit.cover);
                            },
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}

class card_new_kala extends StatefulWidget {
  final String text_;
  final String text_2;
  final Color color_;
  final String Image_1;
  final Color color_Text_;
  final Color color_Text_2;
  final GestureTapCallback? onTap_;

  const card_new_kala(
      {Key? key,
      required this.text_,
      required this.color_,
      this.onTap_,
      required this.Image_1,
      required this.color_Text_,
      required this.text_2,
      required this.color_Text_2})
      : super(key: key);

  @override
  State<card_new_kala> createState() => _card_new_kalaState();
}

class _card_new_kalaState extends State<card_new_kala> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap_,
      child: Card(
        color: widget.color_,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(widget.text_,
                          style: PersianFonts.Shabnam.copyWith(
                              fontSize: 15.0, color: widget.color_Text_)),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(widget.text_2,
                          style: PersianFonts.Shabnam.copyWith(
                              fontSize: 12.0, color: widget.color_Text_2)),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Card(
                        color: Colors.white12,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                            height: 30,
                            width: 30,
                            child: Center(
                                child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 15,
                            ))),
                      )),
                ],
              ),
            )),
      ),
    );
  }
}

class card_sade_border extends StatelessWidget {
  final Widget? child_;
  final double w_;
  final double h_;
  final Color color_;
  final double crop_;
  final Color color_border;
  const card_sade_border(
      {Key? key,
      this.child_,
      required this.w_,
      required this.h_,
      required this.color_,
      required this.crop_,
      required this.color_border})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color_,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(crop_),
          side: BorderSide(width: 2, color: color_border)),
      child: Container(
          height: h_,
          width: w_,
          margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
          child: child_),
    );
  }
}

class card_sade extends StatefulWidget {
  final Widget? child_;
  final double w_;
  final double h_;
  final Color color_;
  final double crop_;
  const card_sade(
      {Key? key,
      this.child_,
      required this.w_,
      required this.h_,
      required this.color_,
      required this.crop_})
      : super(key: key);

  @override
  State<card_sade> createState() => _card_sadeState();
}

class _card_sadeState extends State<card_sade> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.color_,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.crop_)),
      child: Container(
          height: widget.h_,
          width: widget.w_,
          margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
          child: widget.child_),
    );
  }
}
