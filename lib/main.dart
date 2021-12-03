import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? dropdownvalue = 'Default Sorting';
  var items = [
    'Default Sorting',
    'Banana',
    'Grapes',
    'Orange',
    'watermelon',
    'Pineapple'
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFFFCEAA),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Container(
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(color: Color(0xFFf58d42), spreadRadius: 3),
                BoxShadow(color: Color(0xFFFFFDF8), spreadRadius: 4),
              ],
              color: const Color(0xFFFFEBC1),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                      height: height * 0.1,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFE6D3),
                                        shape: BoxShape.circle),
                                    child: Center(
                                      child: FaIcon(FontAwesomeIcons.cartPlus,
                                          color: Colors.black),
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('shophub'),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Home'),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Shop',
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text('Blog'),
                                SizedBox(
                                  width: 20,
                                ),
                                Text('Contact')
                              ],
                            ),
                            Row(
                              children: [
                                Text('\$239'),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.shopping_bag,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                      height: height * 0.9,
                      child: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Stack(
                            children: [
                              Container(
                                height: 300,
                                decoration: BoxDecoration(
                                    color: Color(0xFFFDBD38),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 40),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(
                                            text: TextSpan(
                                                text: 'Home ',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14),
                                                children: [
                                              TextSpan(
                                                  text: '/ Product',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                      fontSize: 14))
                                            ])),
                                        Text('Shop',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 28)),
                                        Row(
                                          children: [
                                            Text('Showing 1-12 of 36 results',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14)),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            DropdownButton(
                                              value: dropdownvalue,
                                              // dropdownColor: Color(0xFFFED37E),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              iconSize: 20,
                                              icon: Icon(
                                                  Icons.keyboard_arrow_down),
                                              items: items.map((String items) {
                                                return DropdownMenuItem(
                                                    value: items,
                                                    child: Text(items));
                                              }).toList(),
                                              onChanged: (String? newValue) {
                                                setState(() {
                                                  dropdownvalue = newValue;
                                                });
                                              },
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 100,
                                left: 0,
                                right: 0,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Container(
                                      width: width * 0.8,
                                      height: height * 0.6,
                                      // color: Colors.red,
                                      child: CustomScrollView(slivers: [
                                        SliverGrid(
                                            delegate:
                                                SliverChildBuilderDelegate(
                                                    (BuildContext context,
                                                        int index) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Container(
                                                  width: 300,
                                                  height: 400,
                                                  padding: EdgeInsets.all(16),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFFFFE6D3),
                                                      gradient: LinearGradient(
                                                          begin: Alignment
                                                              .topCenter,
                                                          end: Alignment
                                                              .bottomCenter,
                                                          colors: [
                                                            Color(0xFFFFFCF9),
                                                            Color(0xFFFFDABF),
                                                            Color(0xFFFEC7A4),
                                                            Color(0xFFFFFCF9)
                                                          ]),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Container(
                                                            height: 50,
                                                            width: 50,
                                                            decoration: BoxDecoration(
                                                                color: Color(
                                                                    0xFFFFE6D3),
                                                                shape: BoxShape
                                                                    .circle),
                                                            child: Center(
                                                              child: FaIcon(
                                                                FontAwesomeIcons
                                                                    .expand,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 50,
                                                            width: 50,
                                                            decoration: BoxDecoration(
                                                                color: Color(
                                                                    0xFFFFE6D3),
                                                                shape: BoxShape
                                                                    .circle),
                                                            child: Center(
                                                              child: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .cartPlus,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                            // width: 200,
                                                            // height: 200,
                                                            ),
                                                      ),
                                                      Text(
                                                        'Popular Shoe Trends',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Color(
                                                                0xFF7061A1)),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        '\$236',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Color(
                                                                0xFF777596)),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              );
                                            }, childCount: 9),
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 4)),
                                      ])),
                                ),
                              )
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
