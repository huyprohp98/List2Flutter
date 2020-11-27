import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bai4/list_image_one.dart';
import 'package:flutter_app_bai4/list_image_two.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'all_product.dart';
import 'categoryList.dart';
import 'category_item.dart';
import 'list_image_video.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.13,
                  color: Colors.red,
                ),
                // Positioned.fill(
                //   top: 15,
                //   left: 20,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     children: <Widget>[
                //       Container(
                //         margin: EdgeInsets.only(top: 10),
                //         child: GestureDetector(
                //           onTap: Toasta,
                //           child: Image.asset(
                //             "assets/images/anh_a_a.png",
                //             height: 25,
                //             width: 25,
                //           ),
                //         ),
                //       ),
                //       SizedBox(
                //         width: 20,
                //       ),
                //       Container(
                //         padding: EdgeInsets.only(top: 10),
                //         child: ClipRRect(
                //           borderRadius: BorderRadius.all(Radius.circular(40)),
                //           child: Container(
                //             color: Colors.white,
                //             width: 180,
                //             height: 40,
                //             child: Align(
                //               alignment: Alignment.centerLeft,
                //               child: Padding(
                //                 padding: EdgeInsets.only(left: 20),
                //                 child: Text(
                //                   "Tim san pham ...  ",
                //                   style: TextStyle(
                //                     color: Colors.black87,
                //                     fontWeight: FontWeight.normal,
                //                     fontSize: 14,
                //                   ),
                //                   overflow: TextOverflow.ellipsis,
                //                   maxLines: 3,
                //                 ),
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //       SizedBox(
                //         width: 25,
                //       ),
                //       Container(
                //         margin: EdgeInsets.only(top: 10),
                //         child: Row(
                //           children: <Widget>[
                //             GestureDetector(
                //               onTap: Toasta,
                //               child: Image.asset(
                //                 "assets/images/anh_b_b.png",
                //                 height: 25,
                //               ),
                //             ),
                //             SizedBox(
                //               width: 10,
                //             ),
                //           ],
                //         ),
                //       ),
                //       SizedBox(
                //         width: 5,
                //       ),
                //       Container(
                //         margin: EdgeInsets.only(top: 10),
                //         child: Row(
                //           children: <Widget>[
                //             GestureDetector(
                //               onTap: Toasta,
                //               child: Image.asset(
                //                 "assets/images/anh_c_c.png",
                //                 height: 25,
                //               ),
                //             ),
                //             SizedBox(
                //               width: 10,
                //             ),
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                Positioned.fill(
                  left: 20,
                  top: 30,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 7,
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: GestureDetector(
                                  onTap: Toasta,
                                  child: Image.asset(
                                    'assets/images/anh_a_a.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),

                              //Menu Icon
                              // SizedBox(width: 14,),
                              Expanded(
                                flex: 8,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Container(
                                      color: Colors.white,
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      height: 40,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            'tìm kiếm',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )),
                              ),
                              //tensanpham
                            ],
                          ),
                        ),
                      ),
                      // SizedBox(width: 30,),
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: GestureDetector(
                                  onTap: Toasta,
                                  child: Image.asset(
                                    'assets/images/anh_b_b.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                              ),
                             Container(
                               child: GestureDetector(
                                 onTap: Toasta,
                                 child:  Image.asset(
                                   'assets/images/anh_c_c.png',
                                   height: 30,
                                   width: 30,
                                 ),
                               ),
                             ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 150,
                          child: Swiper(
                            itemBuilder: (BuildContext context, int index) {
                              return new Image.asset(
                                "assets/images/anh_d_d.jpg",
                                fit: BoxFit.fill,
                              );
                            },
                            autoplay: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            // control: new SwiperControl(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   margin: EdgeInsets.symmetric(horizontal: 20),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: <Widget>[
                  //       SizedBox(
                  //         height: 20,
                  //       ),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: <Widget>[
                  //           Column(
                  //             children: <Widget>[
                  //               ClipRRect(
                  //                   borderRadius:
                  //                       BorderRadius.all(Radius.circular(500)),
                  //                   child: Stack(
                  //                     alignment: Alignment.center,
                  //                     children: <Widget>[
                  //                       Container(
                  //                         height: 50,
                  //                         width: 50,
                  //                         color: Colors.grey[300],
                  //                       ),
                  //                       Image.asset(
                  //                         "assets/images/anh_e_e.png",
                  //                         height: 30,
                  //                         width: 30,
                  //                       ),
                  //                     ],
                  //                   )),
                  //               Container(
                  //                 width:
                  //                     MediaQuery.of(context).size.width * 0.25,
                  //                 child: Text(
                  //                   "My pham ",
                  //                   textAlign: TextAlign.center,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //           Column(
                  //             children: <Widget>[
                  //               ClipRRect(
                  //                   borderRadius:
                  //                       BorderRadius.all(Radius.circular(500)),
                  //                   child: Stack(
                  //                     alignment: Alignment.center,
                  //                     children: <Widget>[
                  //                       Container(
                  //                         height: 50,
                  //                         width: 50,
                  //                         color: Colors.grey[300],
                  //                       ),
                  //                       Image.asset(
                  //                         "assets/images/anh_f_f.png",
                  //                         height: 30,
                  //                         width: 30,
                  //                       ),
                  //                     ],
                  //                   )),
                  //               Container(
                  //                 width:
                  //                     MediaQuery.of(context).size.width * 0.25,
                  //                 child: Text(
                  //                   "Salon toc ",
                  //                   textAlign: TextAlign.center,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //           Column(
                  //             children: <Widget>[
                  //               ClipRRect(
                  //                   borderRadius:
                  //                       BorderRadius.all(Radius.circular(500)),
                  //                   child: Stack(
                  //                     alignment: Alignment.center,
                  //                     children: <Widget>[
                  //                       Container(
                  //                         height: 50,
                  //                         width: 50,
                  //                         color: Colors.grey[300],
                  //                       ),
                  //                       Image.asset(
                  //                         "assets/images/anh_g_g.png",
                  //                         height: 30,
                  //                         width: 30,
                  //                       ),
                  //                     ],
                  //                   )),
                  //               Container(
                  //                 width:
                  //                     MediaQuery.of(context).size.width * 0.25,
                  //                 child: Text(
                  //                   "Spa ",
                  //                   textAlign: TextAlign.center,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ],
                  //       ),
                  //       SizedBox(
                  //         height: 20,
                  //       ),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: <Widget>[
                  //           Column(
                  //             children: <Widget>[
                  //               ClipRRect(
                  //                   borderRadius:
                  //                       BorderRadius.all(Radius.circular(500)),
                  //                   child: Stack(
                  //                     alignment: Alignment.center,
                  //                     children: <Widget>[
                  //                       Container(
                  //                         height: 50,
                  //                         width: 50,
                  //                         color: Colors.grey[300],
                  //                       ),
                  //                       Image.asset(
                  //                         "assets/images/anh_h_h.png",
                  //                         height: 30,
                  //                         width: 30,
                  //                       ),
                  //                     ],
                  //                   )),
                  //               Container(
                  //                 width:
                  //                     MediaQuery.of(context).size.width * 0.25,
                  //                 child: Text(
                  //                   "Mi & Mong ",
                  //                   textAlign: TextAlign.center,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //           Column(
                  //             children: <Widget>[
                  //               ClipRRect(
                  //                   borderRadius:
                  //                       BorderRadius.all(Radius.circular(500)),
                  //                   child: Stack(
                  //                     alignment: Alignment.center,
                  //                     children: <Widget>[
                  //                       Container(
                  //                         height: 50,
                  //                         width: 50,
                  //                         color: Colors.grey[300],
                  //                       ),
                  //                       Image.asset(
                  //                         "assets/images/anh_j_j.png",
                  //                         height: 30,
                  //                         width: 30,
                  //                       ),
                  //                     ],
                  //                   )),
                  //               Container(
                  //                 width:
                  //                     MediaQuery.of(context).size.width * 0.25,
                  //                 child: Text(
                  //                   "Xam tham my Tatto ",
                  //                   textAlign: TextAlign.center,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //           Column(
                  //             children: <Widget>[
                  //               ClipRRect(
                  //                   borderRadius:
                  //                       BorderRadius.all(Radius.circular(500)),
                  //                   child: Stack(
                  //                     alignment: Alignment.center,
                  //                     children: <Widget>[
                  //                       Container(
                  //                         height: 50,
                  //                         width: 50,
                  //                         color: Colors.grey[300],
                  //                       ),
                  //                       Image.asset(
                  //                         "assets/images/anh_k_k.png",
                  //                         height: 30,
                  //                         width: 30,
                  //                       ),
                  //                     ],
                  //                   )),
                  //               Container(
                  //                 width:
                  //                     MediaQuery.of(context).size.width * 0.25,
                  //                 child: Text(
                  //                   "Hoa my pham",
                  //                   textAlign: TextAlign.center,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Container(
                    child: GridView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Category(
                              id: index,
                            ),
                          );
                        },
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: itemCategory.length),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10,right: 10),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Sản phẩm được yêu thích",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          "Xem tất cả",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[800],
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 220,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productAll.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: ListImage(
                            id: index,
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10,right: 10),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Sản phẩm mới nhất",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          "Xem tất cả",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[800],
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 220,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productAll.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: ListImage(
                            id: index,
                          ),
                        );
                      },
                    ),
                  ),
                  // Container(
                  //   margin: EdgeInsets.symmetric(vertical: 10),
                  //   height: 220,
                  //   child: ListView.builder(
                  //     scrollDirection: Axis.horizontal,
                  //     itemCount: productAll.length,
                  //     itemBuilder: (context, index) {
                  //       return Container(
                  //         child: ListImage(
                  //           id: index,
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10,right: 10),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Tin tức",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          "Xem tất cả",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[800],
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 260,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productAll.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: ListImageTwo(
                            id: index,
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10,right: 10),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Video",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          "Xem tất cả",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[800],
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 260,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productAll.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: ListImageVideo(
                            id: index,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void Toasta() {
    Fluttertoast.showToast(
        msg: "ok nhe",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.orangeAccent,
        textColor: Color(0xff606470),
        fontSize: 10.0);
  }
}
