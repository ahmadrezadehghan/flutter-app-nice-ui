import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

import '../../theme/color.dart';
import '../../widgets/buttons.dart';
import '../../widgets/text.dart';
import 'a_peroje.dart';

class new_proje extends StatefulWidget {
  @override
  _new_projeState createState() => _new_projeState();
}

class _new_projeState extends State<new_proje> {
  List<Color> color_select = [Colors.white10, Colors.white10, Colors.white10];
  String dasteha = "catigory";
  String monaseb = "catigory";

  List<File> _images = [];
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
                          text_fild_me_3(
                            onChanged_: (val) {
                              setState(() {});
                            },
                            label_: "Project title",
                            hiden_text: "",
                            keyboardType_: TextInputType.text,
                            icon_: Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            act_icon: true,
                          ),
                          text_fild_me_3(
                            onChanged_: (val) {
                              setState(() {});
                            },
                            label_: "Summary",
                            hiden_text: "",
                            keyboardType_: TextInputType.number,
                            icon_: Icon(
                              Icons.info,
                              color: Colors.red,
                            ),
                            act_icon: false,
                          )
                        ]),
                        text_fild_me_multi_line(
                          line_: 4,
                          onChanged_: (val) {
                            setState(() {});
                          },
                          label_: "Full text of the project",
                          hiden_text: " ",
                          keyboardType_: TextInputType.text,
                          icon_: Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          act_icon: true,
                        ),
                        text_fild_me_3(
                          onChanged_: (val) {
                            setState(() {});
                          },
                          label_: "amount",
                          hiden_text: "",
                          keyboardType_: TextInputType.text,
                          icon_: Icon(
                            Icons.star,
                            size: 0,
                            color: Colors.amber,
                          ),
                          act_icon: true,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Container(
                                            height: 100,
                                            width: 130,
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: const Color.fromARGB(
                                                      255, 167, 167, 167),
                                                  blurRadius: 4,
                                                  offset: Offset(
                                                      4, 8), // Shadow position
                                                ),
                                              ],
                                            ),
                                            child: IconButton(
                                              icon: Icon(Icons.camera_alt),
                                              onPressed: () =>
                                                  getImage(ImageSource.camera),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Container(
                                            height: 100,
                                            width: 130,
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: const Color.fromARGB(
                                                      255, 167, 167, 167),
                                                  blurRadius: 4,
                                                  offset: Offset(
                                                      4, 8), // Shadow position
                                                ),
                                              ],
                                            ),
                                            child: IconButton(
                                              icon: Icon(Icons.image),
                                              onPressed: () =>
                                                  getImage(ImageSource.gallery),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Container(
                                            height: 100,
                                            width: 130,
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: const Color.fromARGB(
                                                      255, 167, 167, 167),
                                                  blurRadius: 4,
                                                  offset: Offset(
                                                      4, 8), // Shadow position
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
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: const Color.fromARGB(
                                                      255, 167, 167, 167),
                                                  blurRadius: 4,
                                                  offset: Offset(
                                                      4, 8), // Shadow position
                                                ),
                                              ],
                                            ),
                                            child: IconButton(
                                              icon:
                                                  Icon(Icons.insert_drive_file),
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
                            ]),
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
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
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
                        SizedBox(
                          height: 15,
                        ),
                        btn_me4(
                          size_font: 14,
                          text_: "New project registration",
                          color_: Colors.greenAccent,
                          width_: MediaQuery.of(context).size.width - 20,
                          height_: 60,
                          onPressed: () {
                            Get.off(proje());
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 100,
        ),
        Align(
          alignment: Alignment.center,
          child: Text("New Project",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 15.0,
                  color: Colors.white70)),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: TextButton(
            onPressed: () {},
            child: const Text("",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 13.0,
                    color: Colors.green)),
          ),
        )
      ],
    );
  }
}
