import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';

import '../theme/color.dart';
import 'card_widget.dart';

class state_city extends StatefulWidget {
  const state_city({Key? key}) : super(key: key);

  @override
  State<state_city> createState() => _state_cityState();
}

String get_state = "";
String get_city = "";

class _state_cityState extends State<state_city> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text("انتخاب استان/شهرستان",
                style: PersianFonts.Shabnam.copyWith(fontSize: 14.0, color: t)),
          ),
          card_sade_border(
            color_border: w,
            w_: MediaQuery.of(context).size.width - 10,
            h_: 170,
            color_: w,
            crop_: 13,
            child_: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text("انتخاب استان",
                      style: PersianFonts.Shabnam.copyWith(
                          fontSize: 15.0, color: t)),
                ),
                DropdownSearch<String>(
                  onChanged: (val) {
                    setState(() {
                      // read_city(val!);
                    });
                  },
                  clearButtonProps: ClearButtonProps(
                      icon: Icon(
                        Icons.clear,
                        color: t,
                        size: 30,
                      ),
                      isVisible: true),
                  // items: list_state,
                  dropdownButtonProps: DropdownButtonProps(color: t),
                  popupProps: PopupProps.menu(
                    showSearchBox: true,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text("انتخاب  شهرستان",
                      style: PersianFonts.Shabnam.copyWith(
                          fontSize: 15.0, color: t)),
                ),
                Expanded(
                  child: StreamBuilder(
                    //Error number 2
                    // stream: NumberCreator().stream,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Text(". . . مرتب سازی لیست ",
                            style: PersianFonts.Shabnam.copyWith(
                                fontSize: 15.0, color: t));
                      } else if (snapshot.connectionState ==
                          ConnectionState.done) {
                        return Text('done');
                      } else if (snapshot.hasError) {
                        return Text('Error!');
                      } else {
                        return ListView.builder(
                            itemCount: 1,
                            itemBuilder: (BuildContext context, int index) {
                              return DropdownSearch<String>(
                                selectedItem: get_city,
                                onChanged: (val) {
                                  setState(() {
                                    get_city = val!;
                                  });
                                },
                                clearButtonProps: ClearButtonProps(
                                    icon: Icon(
                                      Icons.clear,
                                      color: t,
                                      size: 30,
                                    ),
                                    isVisible: true),
                                // items: list_city,
                                dropdownButtonProps:
                                    DropdownButtonProps(color: t),
                                popupProps: PopupProps.menu(
                                  showSearchBox: true,
                                ),
                              );
                            });
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
