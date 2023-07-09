// ignore_for_file: prefer__ructors, unnecessary_new, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screens/loginscreen.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../main.dart';
import '../../theme/color.dart';
import 'edit_profile.dart';
import 'notifi.dart';

class z_setting1 extends StatefulWidget {
  @override
  z_setting1State createState() => z_setting1State();
}

class z_setting1State extends State<z_setting1> {
  bool lightTheme = true;
  Color currentColor = g;
  List<Color> currentColors = [Colors.yellow, Colors.green];
  List<Color> colorHistory = [];

  void changeColor(Color color) => setState(() {
        currentColor = color;
        g = color;
        setState(() {});
      });
  void changeColors(List<Color> colors) =>
      setState(() => currentColors = colors);

  Future setColor(int idx) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    await preferences.setInt('vcolor', idx);
  }

  Future setBColor(int cBv, int cAv, int cCv) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setInt('vBcolor', cBv);
    await preferences.setInt('vAcolor', cAv);
    await preferences.setInt('vCcolor', cCv);
    print(
        'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn$cBv');
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController commentEditingController =
        TextEditingController();
    double _value = 15;
    double fsb = 10;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: w,
          //extendBodyBehindAppBar: true,
          appBar: AppBar(
            foregroundColor: b,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(widget_curve),
                    bottomRight: Radius.circular(widget_curve))),
            toolbarHeight: 35,
            backgroundColor: g,
            bottomOpacity: 0.1,
            leading: IconButton(
              icon: Icon(Icons.arrow_back,
                  color: Color.fromARGB(255, 48, 48, 48)),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              "settings",
              style: TextStyle(
                fontSize: _value,
              ),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35.0),
                            topRight: Radius.circular(35.0))),
                    focusColor: Color.fromARGB(255, 75, 201, 16),
                    hoverColor: Color.fromARGB(255, 16, 28, 201),
                    selectedTileColor: Color.fromARGB(255, 201, 16, 155),
                    selectedColor: Color.fromARGB(255, 201, 16, 16),
                    title: Text("edit profile",
                        style: TextStyle(
                          fontSize: _value,
                          color: t,
                        )),
                    leading: Icon(
                      Icons.edit,
                      color: g,
                      size: 30,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => p_edit()));
                    }),
                //theme++++++++++++++++++++++++++++++++++++++++++++++++++++
                ExpansionTile(
                    title: Text("theme",
                        style: TextStyle(
                          fontSize: _value,
                          color: t,
                        )),
                    leading: Icon(
                      Icons.color_lens,
                      color: g,
                      size: 30,
                    ),
                    children: [
                      Container(
                        width: double.infinity,
                        height: 25,
                        color: g,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: new BoxDecoration(
                            color: Color.fromARGB(255, 214, 214, 214),
                            borderRadius:
                                new BorderRadius.all(new Radius.circular(5.0)),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black38,
                                  offset: new Offset(0.0, 2.0),
                                  blurRadius: 10)
                            ]),
                        child: Slider(
                          value: _value,
                          activeColor: g,
                          inactiveColor: b,
                          onChanged: (double s) {
                            setState(() {
                              _value = s;
                            });
                          },
                          divisions: 10,
                          min: 10.0,
                          max: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("The application font will be this size",
                          style: TextStyle(fontSize: _value, color: t)),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: double.infinity,
                        height: 0.5,
                        color: t,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        child: HSVColorPickerExample(
                          pickerColor: currentColor,
                          onColorChanged: changeColor,
                          colorHistory: colorHistory,
                          onHistoryChanged: (List<Color> colors) =>
                              colorHistory = colors,
                        ),
                      ),
                      Column(
                        children: [
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 5.0, left: 5),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  InkWell(
                                    child: Container(
                                      width: 125,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: <Color>[
                                            Color.fromARGB(255, 146, 146, 146),
                                            Color.fromARGB(255, 80, 80, 80),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(1),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(1),
                                        ),
                                      ),
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.dark_mode_rounded,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                        onPressed: () {
                                          setBColor(0xFF3F3F3F, 0xFFEBE9E9,
                                              0xFFFFFFFF);

                                          w = Color.fromARGB(255, 71, 71, 71);
                                          t = Colors.white;

                                          setState(() {});
                                        },
                                      ),
                                    ),
                                    onTap: () async {
                                      setBColor(
                                          0xFF3F3F3F, 0xFFEBE9E9, 0xFFFFFFFF);

                                      w = Color.fromARGB(255, 71, 71, 71);
                                      t = Colors.white;

                                      setState(() {}); // pop current page
                                    },
                                  ),
                                  InkWell(
                                    child: Container(
                                      width: 125,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: <Color>[
                                            Color.fromARGB(255, 171, 160, 13),
                                            Color.fromARGB(255, 255, 242, 62),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(1),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(1),
                                          bottomRight: Radius.circular(10),
                                        ),
                                      ),
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.light_mode_rounded,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                        onPressed: () async {
                                          setBColor(0xFFFFFFFF, 0xFFEBE9E9,
                                              0xFF2C2C2C);
                                          w = Colors.white;

                                          t = Color.fromARGB(255, 71, 71, 71);

                                          setState(() {});
                                        },
                                      ),
                                    ),
                                    onTap: () async {
                                      setBColor(
                                          0xFFFFFFFF, 0xFFEBE9E9, 0xFF2C2C2C);
                                      w = Colors.white;

                                      t = Color.fromARGB(255, 71, 71, 71);

                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
                            child: InkWell(
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color.fromARGB(255, 10, 209, 47),
                                      Color.fromARGB(255, 8, 235, 42),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.check_circle,
                                          size: 18,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "save",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                RestartWidget.restartApp(context);
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: double.infinity,
                        height: 25,
                        color: g,
                      ),
                    ]),
                //theme------------------------------------------------------
                ListTile(
                    title: Text("notifications",
                        style: TextStyle(
                          fontSize: _value,
                          color: t,
                        )),
                    leading: Icon(
                      Icons.notifications,
                      color: g,
                      size: 30,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Notifi()));
                    }),
                ListTile(
                    title: Text("work with us",
                        style: TextStyle(
                          fontSize: _value,
                          color: t,
                        )),
                    leading: Icon(
                      Icons.assignment_ind_rounded,
                      color: g,
                      size: 30,
                    ),
                    onTap: () {}),
                ListTile(
                    title: Text('help center',
                        style: TextStyle(
                          fontSize: _value,
                          color: t,
                        )),
                    leading: Icon(
                      Icons.support,
                      size: 30,
                      color: g,
                    ),
                    onTap: () {}),
                ListTile(
                    title: Text("about us",
                        style: TextStyle(
                          fontSize: _value,
                          color: t,
                        )),
                    leading: Icon(
                      Icons.info,
                      color: g,
                      size: 30,
                    ),
                    onTap: () {}),
                ListTile(
                    title: Text('make new account / exit account',
                        style: TextStyle(
                          fontSize: _value,
                          color: t,
                        )),
                    leading: Icon(
                      Icons.person_add,
                      color: g,
                      size: 30,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    }),
                Container(
                  alignment: Alignment.bottomCenter,
                  color: Colors.black,
                  width: double.infinity,
                  height: 0.1,
                ),
                Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.all(10),
                    height: 100,
                    child: Text(
                      "version 1.0.0",
                      style: TextStyle(
                          fontSize: _value,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 129, 129, 129)),
                    )),
              ],
            ),
          ),
        ));
  }
}

void copyToClipboard(String input) {
  String textToCopy = input.replaceFirst('#', '').toUpperCase();
  if (textToCopy.startsWith('FF') && textToCopy.length == 8) {
    textToCopy = textToCopy.replaceFirst('FF', '');
  }
  Clipboard.setData(ClipboardData(text: '#$textToCopy'));
}

class HSVColorPickerExample extends StatefulWidget {
  const HSVColorPickerExample({
    Key? key,
    required this.pickerColor,
    required this.onColorChanged,
    this.colorHistory,
    this.onHistoryChanged,
  }) : super(key: key);

  final Color pickerColor;
  final ValueChanged<Color> onColorChanged;
  final List<Color>? colorHistory;
  final ValueChanged<List<Color>>? onHistoryChanged;

  @override
  State<HSVColorPickerExample> createState() => _HSVColorPickerExampleState();
}

class _HSVColorPickerExampleState extends State<HSVColorPickerExample> {
  bool _displayThumbColor2 = true;
  // Picker 4
  final textController = TextEditingController(
      text:
          '#FF8DEDFD'); // The initial value can be provided directly to the controller.
  bool _enableAlpha4 = true;

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  Future setColor(String cv) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString('vcolor', cv);
    print(
        'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn$cv');
  }

  Future setBColor(int cBv, int cAv, int cCv) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setInt('vBcolor', cBv);
    await preferences.setInt('vAcolor', cAv);
    await preferences.setInt('vCcolor', cCv);
    print(
        'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn$cBv');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

        Padding(
          padding: const EdgeInsets.only(left: 0, right: 0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                // border: Border.all(width: 2, color: d),
                // color: w,
                // borderRadius: BorderRadius.all(
                //   Radius.circular(10),
                // ),
                ),
            child: Column(
              children: [
                ColorPicker(
                  pickerColor: widget.pickerColor,
                  onColorChanged: widget.onColorChanged,

                  colorPickerWidth: MediaQuery.of(context).size.width * 0.7,
                  pickerAreaHeightPercent: 0.9,
                  enableAlpha:
                      _enableAlpha4, // hexInputController will respect it too.
                  displayThumbColor: false,
                  hexInputBar: false,

                  paletteType: PaletteType.hsvWithHue,
                  labelTypes: const [],
                  pickerAreaBorderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  hexInputController: textController, // <- here
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
