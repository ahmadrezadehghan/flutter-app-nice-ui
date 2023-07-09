import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/buttons.dart';
import 'package:image_picker/image_picker.dart';

import '../../theme/color.dart';

class p_edit extends StatefulWidget {
  @override
  _p_editState createState() => _p_editState();
}

class _p_editState extends State<p_edit> {
  bool loading = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<FormState> formKey2 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey3 = GlobalKey<FormState>();
  File? _imageFile;
  final _picker = ImagePicker();
  TextEditingController txtNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: w,
        appBar: AppBar(
          foregroundColor: b,
          backgroundColor: g,
          toolbarHeight: 40,
          centerTitle: true,
          title: Text(
            'edit profile',
            style: TextStyle(fontSize: 14),
          ),
        ),
        body: loading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(top: 40, left: 40, right: 40),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2),
                          Stack(
                            children: <Widget>[
                              GestureDetector(
                                child: Container(
                                  width: 110,
                                  height: 110,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/me2.jpg'),
                                          fit: BoxFit.cover),
                                      color: const Color.fromARGB(
                                          255, 228, 228, 228)),
                                ),
                                onTap: () {},
                              ),
                              Positioned(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: CircleAvatar(
                                      backgroundColor: w,
                                      foregroundColor: t,
                                      radius: 15,
                                      child: Icon(
                                        Icons.edit,
                                        size: 20,
                                      )),
                                ),
                                right: 2.0,
                                top: 0.0,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'change profile photo',
                                  style: TextStyle(fontSize: 14, color: t),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'name',
                          style: TextStyle(fontSize: 14, color: t),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: w,
                          border: Border.all(color: g),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 4,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 1, bottom: 1, right: 8, left: 8),
                          child: Form(
                            key: formKey,
                            child: TextFormField(
                              style: TextStyle(
                                color: t,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              controller: txtNameController,
                              validator: (val) =>
                                  val!.isEmpty ? 'Invalid Name' : null,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'password',
                          style: TextStyle(fontSize: 14, color: t),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: w,
                          border: Border.all(color: g),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 4,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 1, bottom: 1, right: 8, left: 8),
                          child: Form(
                            key: formKey2,
                            child: TextFormField(
                              style: TextStyle(
                                color: t,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              controller: passwordController,
                              validator: (val) =>
                                  val!.isEmpty ? 'Invalid Name' : null,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'bio',
                          style: TextStyle(fontSize: 14, color: t),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: w,
                          border: Border.all(color: g),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 4,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 1, bottom: 1, right: 8, left: 8),
                          child: Form(
                            key: formKey3,
                            child: TextFormField(
                              style: TextStyle(
                                color: t,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              controller: bioController,
                              validator: (val) =>
                                  val!.isEmpty ? 'Invalid Name' : null,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Container(
                        width: double.infinity,
                        child: btn_me4(
                          color_: g,
                          height_: 50,
                          onPressed: () {},
                          size_font: 17,
                          text_: 'update',
                          width_: 250,
                        ),
                      )
                    ],
                  ),
                ),
              ));
  }
}
