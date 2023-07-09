import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';

class btn_me3 extends StatelessWidget {
  final String text_;
  final Color color_;
  final double width_;
  final double height_;
  final VoidCallback onPressed;
  final IconData icon_;
  final double size_font;

  btn_me3(
      {Key? key,
      required this.text_,
      required this.color_,
      required this.width_,
      required this.height_,
      required this.onPressed,
      required this.icon_,
      required this.size_font})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onPressed,
        highlightColor: color_,
        child: Center(
          child: Container(
            color: color_,
            height: 65,
            width: 300,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    icon_,
                    size: 19,
                    color: const Color.fromARGB(255, 50, 50, 50),
                  ),
                  Text(text_,
                      style: PersianFonts.Shabnam.copyWith(
                          fontSize: size_font, color: Colors.black)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
class btn_me1 extends StatelessWidget {
  final String text_;
  final Color color_;
  final double width_;
  final double height_;
  final VoidCallback onPressed;
  final IconData icon_;
  final double size_font;

  btn_me1(
      {Key? key,
      required this.text_,
      required this.color_,
      required this.width_,
      required this.height_,
      required this.onPressed,
      required this.icon_,
      required this.size_font})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onPressed,
        highlightColor: color_,
        child: Center(
          child: Container(
            color: color_,
            height: 65,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    icon_,
                    size: 22,
                    color: const Color.fromARGB(255, 50, 50, 50),
                  ),
                  Text(text_,
                      style: PersianFonts.Shabnam.copyWith(
                          fontSize: size_font, color: Colors.black)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
class btn_me2 extends StatelessWidget {
  final String text_;
  final Color color_;
  final double width_;
  final double height_;
  final VoidCallback onPressed;
  final Icon icon_;
  final double size_font;

  btn_me2(
      {Key? key,
      required this.text_,
      required this.color_,
      required this.width_,
      required this.height_,
      required this.onPressed,
      required this.icon_,
      required this.size_font})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: color_,
        ),
        icon: icon_,
        onPressed: onPressed,
        label: Text(text_,
            style: PersianFonts.Shabnam.copyWith(
                fontSize: size_font, color: Colors.black)),
      ),
    );
  }
}

class btn_me4 extends StatelessWidget {
  final String text_;
  final Color color_;
  final double width_;
  final double height_;
  final VoidCallback onPressed;

  final double size_font;

  btn_me4(
      {Key? key,
      required this.text_,
      required this.color_,
      required this.width_,
      required this.height_,
      required this.onPressed,
      required this.size_font})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      highlightColor: color_,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
            color: color_,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 178, 178, 178),
                blurRadius: 3,
                offset: Offset(0, 8), // Shadow position
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 10),
            child: Center(
              child: Text(text_,
                  style: PersianFonts.Shabnam.copyWith(
                      fontSize: size_font, color: Colors.black)),
            ),
          ),
        ),
      ),
    );
  }
}
