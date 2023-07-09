import 'package:easy_autocomplete/easy_autocomplete.dart';
import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';
import 'package:shamsi_date/shamsi_date.dart';

import '../theme/color.dart';

class text_fild_me extends StatelessWidget {
  final ValueChanged<String>? onChanged_;
  final String label_;
  final String hiden_text;
  final TextInputType keyboardType_;
  const text_fild_me(
      {Key? key,
      this.onChanged_,
      required this.label_,
      required this.hiden_text,
      required this.keyboardType_})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5, left: 10, right: 10),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(label_,
                style: PersianFonts.Shabnam.copyWith(fontSize: 15.0, color: t)),
          ),
          Card(
            color: w,
            elevation: 6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
              child: TextField(
                keyboardType: keyboardType_,
                onChanged: onChanged_,
                style: PersianFonts.Shabnam.copyWith(fontSize: 16.0, color: w),
                decoration: InputDecoration(
                  hintText: hiden_text,
                  hintStyle: TextStyle(color: t),
                  labelStyle: TextStyle(color: t),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class text_fild_me_3 extends StatelessWidget {
  final ValueChanged<String>? onChanged_;
  final String label_;
  final String hiden_text;
  final TextInputType keyboardType_;
  final Icon icon_;
  final bool act_icon;
  const text_fild_me_3(
      {Key? key,
      this.onChanged_,
      required this.label_,
      required this.hiden_text,
      required this.keyboardType_,
      required this.icon_,
      required this.act_icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18, bottom: 5, left: 10, right: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Visibility(
                child: icon_,
                visible: act_icon,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(label_,
                    style: PersianFonts.Shabnam.copyWith(
                        fontSize: 13.0, color: t)),
              ),
            ],
          ),
          Card(
            color: w,
            elevation: 6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
              child: TextField(
                keyboardType: keyboardType_,
                onChanged: onChanged_,
                style: PersianFonts.Shabnam.copyWith(fontSize: 14.0, color: t),
                decoration: InputDecoration(
                  hintText: hiden_text,
                  hintStyle: TextStyle(color: t),
                  labelStyle: TextStyle(color: t),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class text_fild_icon_me extends StatelessWidget {
  final ValueChanged<String>? onChanged_;
  final String label_;
  final String hiden_text;
  final TextInputType keyboardType_;
  final Icon icon_;
  final VoidCallback? onPressed;
  final TextEditingController tedit_;

  const text_fild_icon_me(
      {Key? key,
      this.onChanged_,
      required this.label_,
      required this.hiden_text,
      required this.keyboardType_,
      required this.icon_,
      this.onPressed,
      required this.tedit_})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5, left: 10, right: 10),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(label_,
                style: PersianFonts.Shabnam.copyWith(fontSize: 15.0, color: t)),
          ),
          Row(
            children: [
              Card(
                color: w,
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 40,
                  width: 40,
                  margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                  child: IconButton(onPressed: onPressed, icon: icon_),
                ),
              ),
              Expanded(
                child: Card(
                  color: w,
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                    child: TextField(
                      controller: tedit_,
                      keyboardType: keyboardType_,
                      onChanged: onChanged_,
                      style: PersianFonts.Shabnam.copyWith(
                          fontSize: 15.0, color: t),
                      decoration: InputDecoration(
                        hintText: hiden_text,
                        hintStyle: TextStyle(color: t),
                        labelStyle: TextStyle(color: t),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class text_fild_me_4 extends StatelessWidget {
  final ValueChanged<String>? onChanged_;
  final String label_;
  final String hiden_text;
  final TextInputType keyboardType_;
  final Icon icon_;
  final bool act_icon;
  final TextEditingController txt_edit;
  const text_fild_me_4(
      {Key? key,
      this.onChanged_,
      required this.label_,
      required this.hiden_text,
      required this.keyboardType_,
      required this.icon_,
      required this.act_icon,
      required this.txt_edit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5, left: 10, right: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Visibility(
                child: icon_,
                visible: act_icon,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(label_,
                    style: PersianFonts.Shabnam.copyWith(
                        fontSize: 13.0, color: t)),
              ),
            ],
          ),
          Card(
            color: w,
            elevation: 6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
              child: TextField(
                controller: txt_edit,
                keyboardType: keyboardType_,
                onChanged: onChanged_,
                style: PersianFonts.Shabnam.copyWith(fontSize: 14.0, color: t),
                decoration: InputDecoration(
                  hintText: hiden_text,
                  hintStyle: TextStyle(color: t),
                  labelStyle: TextStyle(color: t),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class text_fild_me_multi_line extends StatelessWidget {
  final ValueChanged<String>? onChanged_;
  final String label_;
  final String hiden_text;
  final TextInputType keyboardType_;
  final Icon icon_;
  final bool act_icon;
  final int line_;
  const text_fild_me_multi_line(
      {Key? key,
      this.onChanged_,
      required this.label_,
      required this.hiden_text,
      required this.keyboardType_,
      required this.icon_,
      required this.act_icon,
      required this.line_})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5, left: 10, right: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Visibility(
                child: icon_,
                visible: act_icon,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(label_,
                    style: PersianFonts.Shabnam.copyWith(
                        fontSize: 13.0, color: t)),
              ),
            ],
          ),
          Card(
            color: w,
            elevation: 6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
              child: TextField(
                maxLines: 3,
                keyboardType: keyboardType_,
                onChanged: onChanged_,
                style: PersianFonts.Shabnam.copyWith(fontSize: 14.0, color: t),
                decoration: InputDecoration(
                  hintText: hiden_text,
                  hintStyle: TextStyle(color: t),
                  labelStyle: TextStyle(color: t),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class text_fild_search_me extends StatefulWidget {
  final String label_;

  final Function(String)? onChanged_;
  final List<String> list_;
  const text_fild_search_me(
      {Key? key, required this.label_, required this.list_, this.onChanged_})
      : super(key: key);

  @override
  State<text_fild_search_me> createState() => _text_fild_search_meState();
}

String intial_ = "";

class _text_fild_search_meState extends State<text_fild_search_me> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(widget.label_,
                style: PersianFonts.Shabnam.copyWith(fontSize: 14.0, color: t)),
          ),
          Card(
            color: Colors.white10,
            elevation: 6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
              child: Row(
                children: [
                  Expanded(
                    child: EasyAutocomplete(
                      initialValue: intial_,
                      suggestions: widget.list_,
                      decoration: InputDecoration(
                          labelStyle: PersianFonts.Shabnam.copyWith(
                              fontSize: 15.0, color: Colors.blueAccent),
                          fillColor: Colors.white30),
                      inputTextStyle:
                          TextStyle(color: Colors.white38, fontSize: 15),
                      cursorColor: Colors.white54,
                      onChanged: widget.onChanged_,
                      onSubmitted: (value) => print(
                        'onSubmitted value: $value',
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          intial_ = "";
                        });
                      },
                      icon: Icon(
                        Icons.remove_circle,
                        color: Colors.red.withOpacity(0.3),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class text_fild_search_icon_me extends StatelessWidget {
  final String label_;
  final Icon icon_;
  final VoidCallback? onPressed_icon;
  final List<String> list_;
  const text_fild_search_icon_me(
      {Key? key,
      required this.label_,
      required this.icon_,
      this.onPressed_icon,
      required this.list_})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(label_,
                style: PersianFonts.Shabnam.copyWith(fontSize: 17.0, color: t)),
          ),
          Row(
            children: [
              Card(
                color: Colors.white10,
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 50,
                  width: 40,
                  margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                  child: IconButton(
                    onPressed: onPressed_icon,
                    icon: icon_,
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: Colors.white10,
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                      child: EasyAutocomplete(
                          suggestions: list_,
                          decoration: InputDecoration(
                              labelStyle: PersianFonts.Shabnam.copyWith(
                                  fontSize: 15.0, color: t),
                              fillColor: t),
                          inputTextStyle:
                              TextStyle(color: Colors.white38, fontSize: 15),
                          cursorColor: t,
                          onChanged: (value) =>
                              print('onChanged value: $value'),
                          onSubmitted: (value) => print(
                                'onSubmitted value: $value',
                              ))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class txt_date_now extends StatefulWidget {
  const txt_date_now({Key? key}) : super(key: key);

  @override
  State<txt_date_now> createState() => _txt_date_nowState();
}

class _txt_date_nowState extends State<txt_date_now> {
  String format1(Date d) {
    final f = d.formatter;

    return '${f.wN} ${f.d} ${f.mN} ${f.y}';
  }

  @override
  Widget build(BuildContext context) {
    Gregorian g2 = Gregorian(
        (DateTime.now().year), (DateTime.now().month), (DateTime.now().day));
    Jalali j3 = g2.toJalali();

    return Text(format1(j3),
        style: PersianFonts.Shabnam.copyWith(fontSize: 12.0, color: w));
  }
}

convert_date_persian(DateTime date_) {
  Gregorian g2 = Gregorian((date_.year), (date_.month), (date_.day));
  Jalali j3 = g2.toJalali();
  final f = j3.formatter;

  return '${f.wN} ${f.d} ${f.mN} ${f.y}';
}

class txt_card_only extends StatelessWidget {
  final ValueChanged<String>? onChanged_;
  final double h_;
  final double w_;
  final double font_size;
  final String hiden_text;
  final TextInputType keyboardType_;

  const txt_card_only(
      {Key? key,
      this.onChanged_,
      required this.hiden_text,
      required this.keyboardType_,
      required this.h_,
      required this.w_,
      required this.font_size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: w,
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: h_,
        width: w_,
        margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
        child: TextField(
          keyboardType: keyboardType_,
          onChanged: onChanged_,
          style: PersianFonts.Shabnam.copyWith(fontSize: font_size, color: t),
          decoration: InputDecoration(
            hintText: hiden_text,
            hintStyle: TextStyle(color: t),
            labelStyle: TextStyle(color: t),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
