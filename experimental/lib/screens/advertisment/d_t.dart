import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

import '../../theme/color.dart';
import '../../widgets/buttons.dart';

class Node {
  final String name;
  final List<Node> children;

  Node({required this.name, required this.children});
}

class Undernude {
  final String name;

  Undernude({required this.name});
}

class d_t extends StatefulWidget {
  @override
  _d_tState createState() => _d_tState();
}

class _d_tState extends State<d_t> {
  final _formKey = GlobalKey<FormState>();
  List<String> horof = ["a", "b", "c", "d", "etc"];
  List<File> _images = [];
  String dasteha = 'Select ad category';
  Future getImage(ImageSource source) async {
    final pickedFile = await ImagePicker().getImage(source: source);

    setState(() {
      if (pickedFile != null) {
        _images.add(File(pickedFile.path));
      } else {
        print('No image selected.');
      }
    });
  }

  Future createPdf() async {
    final pdf = PdfDocument();
    final page = pdf.pages.add();
    final image = MemoryImage(await _images.first.readAsBytes());
    page.graphics.drawImage(
        PdfBitmap(image as List<int>),
        Rect.fromLTWH(
            0, 0, page.getClientSize().width, page.getClientSize().height));
    final bytes = pdf.save();
    await File('example.pdf').writeAsBytes(bytes as List<int>);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: w,
      appBar: AppBar(
        foregroundColor: b,
        centerTitle: true,
        backgroundColor: t,
        toolbarHeight: 40,
        title: Text(
          "request ads",
          style: TextStyle(fontSize: 14, fontFamily: 'Kalameh'),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 15),
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    style: TextStyle(color: t),
                    keyboardType: TextInputType.number,
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      fillColor: t,
                      hintText: ' company name',
                      hintStyle: TextStyle(color: t, fontSize: 14),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 15),
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    style: TextStyle(color: t),
                    keyboardType: TextInputType.number,
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      fillColor: t,
                      hintText: 'CEOs name',
                      hintStyle: TextStyle(color: t, fontSize: 14),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 15),
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    style: TextStyle(color: t),
                    keyboardType: TextInputType.number,
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      fillColor: t,
                      hintText: ' company email',
                      hintStyle: TextStyle(color: t, fontSize: 14),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 15),
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    style: TextStyle(color: t),
                    keyboardType: TextInputType.number,
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      fillColor: t,
                      hintText:
                          " the name of the city where the company is located",
                      hintStyle: TextStyle(color: t, fontSize: 14),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 15),
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    style: TextStyle(color: t),
                    keyboardType: TextInputType.number,
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      fillColor: t,
                      hintText: " advertising date and duration",
                      hintStyle: TextStyle(color: t, fontSize: 14),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 15),
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    style: TextStyle(color: t),
                    keyboardType: TextInputType.number,
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      fillColor: t,
                      hintText: 'phone number',
                      hintStyle: TextStyle(color: t, fontSize: 14),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 15),
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    style: TextStyle(color: t),
                    keyboardType: TextInputType.number,
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      fillColor: t,
                      hintText: 'Title ',
                      hintStyle: TextStyle(color: t, fontSize: 14),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 25.0, right: 25, bottom: 15, top: 10),
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    style: TextStyle(color: t),
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.multiline,
                    maxLines: 9,
                    validator: (val) =>
                        val!.isEmpty ? 'Post body is required' : null,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: " advertisement text",
                      hintStyle: TextStyle(color: t, fontSize: 14),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
              bottom: 0,
            ),
            decoration: BoxDecoration(
              color: b,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            width: MediaQuery.of(context).size.width * 0.7,
            height: 220,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 100,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(0),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 167, 167, 167),
                              blurRadius: 4,
                              offset: Offset(4, 8), // Shadow position
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(Icons.camera_alt),
                          onPressed: () => getImage(ImageSource.camera),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 100,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(0),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 167, 167, 167),
                              blurRadius: 4,
                              offset: Offset(4, 8), // Shadow position
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(Icons.image),
                          onPressed: () => getImage(ImageSource.gallery),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 100,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(0),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 167, 167, 167),
                              blurRadius: 4,
                              offset: Offset(4, 8), // Shadow position
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(Icons.picture_as_pdf),
                          onPressed: () => createPdf(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 100,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(0),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 167, 167, 167),
                              blurRadius: 4,
                              offset: Offset(4, 8), // Shadow position
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(Icons.video_collection),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),

                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: GridView.builder(
                //     itemCount: _images.length,
                //     gridDelegate:
                //         SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 3,
                //     ),
                //     itemBuilder:
                //         (BuildContext context, int index) {
                //       return Image.file(_images[index]);
                //     },
                //   ),
                // ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width * 0.9,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: GridView.builder(
                  itemCount: _images.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 1,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Image.file(_images[index]);
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 25.0, right: 25, bottom: 15, top: 10),
            child: btn_me4(
                size_font: 14,
                text_: 'send',
                color_: Colors.greenAccent,
                width_: MediaQuery.of(context).size.width,
                height_: 60,
                onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
