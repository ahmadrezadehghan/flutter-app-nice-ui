import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';

import '../../theme/color.dart';

class MagazinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: t,
        foregroundColor: w,
        toolbarHeight: 38,
        title: Center(child: Text("جزئیات خبر")),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              const Color.fromARGB(255, 224, 224, 224),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: w,
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  margin: EdgeInsets.symmetric(vertical: 6, horizontal: 0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text("456772",
                                        style: PersianFonts.Yekan.copyWith(
                                            fontSize: 10.0, color: t)),
                                    Text(": کد خبر",
                                        style: PersianFonts.Yekan.copyWith(
                                            fontSize: 10.0, color: t)),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Text(" استان فارس / شهرستان شیراز",
                                        style: PersianFonts.Yekan.copyWith(
                                            fontSize: 11.0, color: t)),
                                    Text(" : منطقه خبر ",
                                        style: PersianFonts.Yekan.copyWith(
                                            fontSize: 11.0, color: t)),
                                    Icon(
                                      Icons.location_on,
                                      color: t,
                                      size: 10,
                                    ),
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
                            SizedBox(
                              height: 5,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Wrap(
                                runAlignment: WrapAlignment.end,
                                alignment: WrapAlignment.end,
                                children: [
                                  Text(" فروش سهام عدالت با سود ۹۹ درصد",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      style: PersianFonts.Yekan.copyWith(
                                          fontSize: 15.0, color: t)),
                                  Text(" : تیتر خبر ",
                                      textAlign: TextAlign.left,
                                      style: PersianFonts.Yekan.copyWith(
                                          fontSize: 15.0, color: t)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 0.5,
                                    width: MediaQuery.of(context).size.width,
                                    color: t,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Wrap(
                              alignment: WrapAlignment.end,
                              children: [
                                Text(": خلاصه خبر ",
                                    style: PersianFonts.Yekan.copyWith(
                                        fontSize: 14.0, color: t)),
                                Text(
                                    " طبق اخرین اخبار بدست آمده کلیه مردم میتوانند سهام عدالت را با قیمت   هر سهم ۵۰ تومان خریداری کنند. به نقل از سایت خبری .........................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................",
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.clip,
                                    style: PersianFonts.Yekan.copyWith(
                                        fontSize: 14.0, color: t)),
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
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                            Container(
                              height: 0.5,
                              width: MediaQuery.of(context).size.width,
                              color: t,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye,
                                      color:
                                          const Color.fromARGB(255, 97, 97, 97),
                                      size: 13,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text("104 ",
                                        style: PersianFonts.Yekan.copyWith(
                                            fontSize: 13.0, color: t)),
                                    Icon(
                                      Icons.remove_red_eye,
                                      color: w,
                                      size: 20,
                                    ),
                                  ],
                                ),
                                Text(" تاریخ ثبت: ۱۴۰۱/۱۱/۲۱  : ۱۰:۳۳ ",
                                    style: PersianFonts.Shabnam.copyWith(
                                        fontSize: 10.0, color: t)),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("اقتصادی / سهام عدالت",
                                    overflow: TextOverflow.ellipsis,
                                    style: PersianFonts.Yekan.copyWith(
                                        fontSize: 10.0, color: t)),
                                Text(":دسته بندی خبر ",
                                    overflow: TextOverflow.ellipsis,
                                    style: PersianFonts.Yekan.copyWith(
                                        fontSize: 10.0, color: t)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
