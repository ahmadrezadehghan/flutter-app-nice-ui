// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new, avoid_unnecessary_containers

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/connections/your_tikckets.dart';
import 'package:flutter_application_1/screens/project/a_peroje.dart';
import 'package:flutter_application_1/utils/data.dart';
import 'package:flutter_application_1/widgets/feature_item.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sticky_headers/sticky_headers.dart';

import 'Counseling/Counseling.dart';
import 'advertisment/advertisment.dart';
import 'base_info/base_info.dart';
import 'connections/main_connection.dart';
import 'exams/exam.dart';
import 'learning/home-learning.dart';
import 'news/news.dart';
import 'resume/resume.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> listHeader = [
    'list 1',
  ];
  List<String> listTitle = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
    'assets/images/7.png',
    'assets/images/8.png',
    'assets/images/9.png',
  ];
  List<Widget> listtap = [
    counseling(),
    advertisment(),
    home_page_learn(),
    proje(),
    base_info(),
    akhbar(),
    resume(),
    Connections(),
    azmoon(),
  ];
  List<String> listn = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
  ];

  List<String> listT = [
    'conseiling',
    'ads',
    'learning',
    'projects',
    'about app',
    'news',
    'resume',
    'connections',
    'exams',
  ];
  List<List<Color>> gradientColors = [
    [
      Color.fromARGB(255, 179, 138, 35),
      Color.fromARGB(255, 255, 243, 131),
    ],
    [
      Color.fromARGB(255, 211, 102, 47),
      Color.fromARGB(255, 255, 170, 127),
    ],
    [
      Color.fromARGB(255, 139, 111, 70),
      Color.fromARGB(255, 255, 205, 131),
    ],
    [
      Color.fromARGB(255, 49, 154, 53),
      Color.fromARGB(255, 123, 255, 127),
    ],
    [
      Color.fromARGB(255, 55, 180, 199),
      Color.fromARGB(255, 127, 238, 255),
    ],
    [
      Color.fromARGB(255, 51, 78, 176),
      Color.fromARGB(255, 125, 153, 255),
    ],
    [
      Color.fromARGB(255, 85, 85, 85),
      Color.fromARGB(255, 194, 194, 194),
    ],
    [
      Color.fromARGB(255, 141, 43, 173),
      Color.fromARGB(255, 224, 130, 255),
    ],
    [
      Color.fromARGB(255, 237, 84, 166),
      Color.fromARGB(255, 255, 121, 193),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        foregroundColor: const Color.fromARGB(255, 77, 77, 77),
        toolbarHeight: 40,
        title: Text(
          style: TextStyle(fontSize: 15),
          'username',
        ),
        leading: Padding(
          padding:
              const EdgeInsets.only(top: 5.0, bottom: 5, right: 12, left: 12),
          child: GestureDetector(
            child: Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/images/me2.jpg'),
                      fit: BoxFit.cover),
                  color: const Color.fromARGB(255, 228, 228, 228)),
            ),
            onTap: () {},
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => your_tickets()),
                );
              },
              child: SvgPicture.asset(
                'assets/icons/chat.svg',
                color: const Color.fromARGB(255, 77, 77, 77),
                width: 28,
                height: 28,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            gridHeader(),
            _buildBody(),
          ],
        ),
      ),
    );
  }

  Widget gridHeader() {
    return new ListView.builder(
      itemCount: listHeader.length,
      itemBuilder: (context, index) {
        return new StickyHeader(
          header: new Container(
            height: 50.0,
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            alignment: Alignment.centerLeft,
            child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: double.infinity,
                  // margin: EdgeInsets.only(
                  //     left: 30, top: 100, right: 30, bottom: 50),

                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 198, 198, 198)
                            .withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0, bottom: 3),
                    child: Text(
                      textAlign: TextAlign.left,
                      listHeader[index],
                      style: TextStyle(
                          color: const Color.fromARGB(255, 79, 79, 79),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
          ),
          content: Container(
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: listTitle.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
              ),
              itemBuilder: (contxt, indx) {
                return Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => listtap[indx]),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 198, 198, 198)
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(0)),
                        gradient: LinearGradient(
                          colors: gradientColors[indx],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            height: 130,
                            width: 100,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 5.0, top: 5),
                              child: Image.asset(
                                listTitle[indx],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              height: 20,
                              width: 15,
                              decoration: BoxDecoration(
                                boxShadow: [],
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(4),
                                    bottomRight: Radius.circular(0)),
                                gradient: LinearGradient(
                                  colors: gradientColors[indx],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 1.0, right: 5),
                                child: Text(
                                  textAlign: TextAlign.left,
                                  listn[indx],
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Center(
                              child: Container(
                                height: 20,
                                width: 100,
                                decoration: BoxDecoration(
                                    boxShadow: [],
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(0),
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(0)),
                                    color: Color.fromARGB(210, 244, 244, 244)),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(bottom: 0.0, right: 0),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    listT[indx],
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 11, 11, 11),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
      shrinkWrap: true,
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 50.0,
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            alignment: Alignment.centerLeft,
            child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: double.infinity,
                  // margin: EdgeInsets.only(
                  //     left: 30, top: 100, right: 30, bottom: 50),

                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 198, 198, 198)
                            .withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0, bottom: 3),
                    child: Text(
                      textAlign: TextAlign.left,
                      'logs',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 79, 79, 79),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
          ),
          _buildFeatured(),
          const SizedBox(
            height: 15,
          ),
          // Container(
          //   height: 50.0,
          //   color: Colors.white,
          //   padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
          //   alignment: Alignment.centerLeft,
          //   child: Align(
          //       alignment: Alignment.centerRight,
          //       child: Container(
          //         width: double.infinity,
          //         // margin: EdgeInsets.only(
          //         //     left: 30, top: 100, right: 30, bottom: 50),

          //         decoration: BoxDecoration(
          //           color: Color.fromARGB(255, 255, 255, 255),
          //           borderRadius: BorderRadius.only(
          //               topLeft: Radius.circular(10),
          //               topRight: Radius.circular(10),
          //               bottomLeft: Radius.circular(10),
          //               bottomRight: Radius.circular(10)),
          //           boxShadow: [
          //             BoxShadow(
          //               color: const Color.fromARGB(255, 198, 198, 198)
          //                   .withOpacity(0.5),
          //               spreadRadius: 1,
          //               blurRadius: 2,
          //               offset: Offset(0, 3), // changes position of shadow
          //             ),
          //           ],
          //         ),
          //         // child: Padding(
          //         //   padding: const EdgeInsets.only(right: 8.0, bottom: 3),
          //         //   child: Text(
          //         //     textAlign: TextAlign.left,
          //         //     "پیشنهاد ها",
          //         //     style: TextStyle(
          //         //         color: const Color.fromARGB(255, 79, 79, 79),
          //         //         fontSize: 14,
          //         //         fontWeight: FontWeight.bold),
          //         //   ),
          //         // ),
          //       )),
          // ),
          //  _buildRecommended(),
        ],
      ),
    );
  }

  _buildFeatured() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 300,
        enlargeCenterPage: true,
        disableCenter: true,
        viewportFraction: .7,
      ),
      items: List.generate(
        features.length,
        (index) => FeatureItem(
          data: features[index],
        ),
      ),
    );
  }
}
