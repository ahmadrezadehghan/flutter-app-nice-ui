import 'package:flutter/material.dart';

import '../utils/data.dart';
import '../widgets/category_box.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 160,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(0, 223, 223, 223),
                    Color.fromARGB(255, 239, 239, 239),
                    Color.fromARGB(255, 243, 243, 243),
                    Color.fromARGB(0, 223, 223, 223),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              height: 115.0,
              child: _buildCategories(),
            )),
        backgroundColor: Colors.white,
        title: Container(
          height: 38,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            maxLines: 1,
            decoration: InputDecoration(
              hintText: 'search',
              contentPadding: EdgeInsets.all(10.0),
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
      body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: Stack(
            children: [
              SizedBox(
                height: 50,
              ),
              // Padding(
              //   padding: EdgeInsets.only(top: 10),
              //   child: _buildCategories(),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: GridView.builder(
                  itemCount: 14,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 225, 225, 225),
                              Color.fromARGB(255, 255, 255, 255)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Image.network(
                            images[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}

_buildCategories() {
  return SingleChildScrollView(
    padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
    scrollDirection: Axis.horizontal,
    child: Row(
      children: List.generate(
        categories.length,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 15),
          child: CategoryBox(
            selectedColor: const Color.fromARGB(255, 3, 3, 3),
            data: categories[index],
            onTap: null,
          ),
        ),
      ),
    ),
  );
}
