import 'package:fetch_product/controllers/datacontroller.dart';
import 'package:fetch_product/screens/home.dart';
import 'package:fetch_product/screens/producttile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final controller = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff2a2770),
        title: Text('Api'),
      ),
      body: Container(
        width: 410,
        height: 798.59765625,
        decoration: const BoxDecoration(
          color: Color(0xff2a2770),
        ),
        //child: Column(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(35.0),
        //       child: Row(
        //         children: <Widget>[
        //           GestureDetector(
        //             onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(builder: (context) => Home()),
        //               );
        //             },
        //             child: const Icon(
        //               Icons.arrow_back,
        //               color: Colors.white,
        //             ),
        //           ),
        //           const SizedBox(width: 80),
        //           const Text(
        //             "الكترونيات",
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 25,
        //             ),
        //           ),
        //           const Spacer(),
        //           Padding(
        //               padding: const EdgeInsets.only(right: 20.0),
        //               child: GestureDetector(
        //                 onTap: () {},
        //                 child: const Icon(
        //                   Icons.notifications_none,
        //                   color: Colors.white,
        //                   size: 26.0,
        //                 ),
        //               )),
        //           Padding(
        //               padding: const EdgeInsets.only(right: 10.0),
        //               child: GestureDetector(
        //                 onTap: () {},
        //                 child: const Icon(
        //                   Icons.chat,
        //                   color: Colors.white,
        //                 ),
        //               )),
        //         ],
        //       ),
        //     ),
        child: Container(
          color: Color.fromARGB(255, 30, 16, 109),
          alignment: Alignment.center,
          child: Obx(() {
            return controller.loading.isTrue
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: controller.DataList.length ?? 0,
                    itemBuilder: (c, i) {
                      final data = controller.DataList[i];
//test
                      // return Card(
                      //   elevation: 2,
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(8.0),
                      //     child: Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         Stack(
                      //           children: [
                      //             Container(
                      //               height: 180,
                      //               width: double.infinity,
                      //               clipBehavior: Clip.antiAlias,
                      //               decoration: BoxDecoration(
                      //                 borderRadius: BorderRadius.circular(4),
                      //               ),
                      //               child: Text(data.title.toString() ?? ""),
                      //             ),
                      //           ],
                      //         ),
                      //         SizedBox(height: 8),
                      //         Text(
                      //           data.price.toString() ?? "",
                      //           style: TextStyle(
                      //               fontFamily: 'avenir',
                      //               fontWeight: FontWeight.w800),
                      //           overflow: TextOverflow.ellipsis,
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // );
                      SizedBox(
                        height: 20,
                      );
                      return Container(
                        color: Colors.white,
                        child: Card(
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 180,
                                      width: double.infinity,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      // child: Row(
                                      //   children: [
                                      //     Text(data.title.toString()),
                                      //   ],
                                      // ),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 100,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                  data.image.toString() ?? "",
                                                ),
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 18),
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    data.title.toString() ?? "",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                  SizedBox(height: 8),
                                                  Text(
                                                    data.category.toString() ??
                                                        "",
                                                    maxLines: 3,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                  SizedBox(height: 8),
                                                  Text(
                                                    data.price.toString() ?? "",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Positioned(
                                                    right: 0,
                                                    child:
                                                        Obx(() => CircleAvatar(
                                                              backgroundColor:
                                                                  Colors.white,
                                                              child: IconButton(
                                                                icon: data
                                                                        .isFavorite
                                                                        .value
                                                                    ? Icon(
                                                                        Icons
                                                                            .favorite_rounded,
                                                                        color: Colors
                                                                            .red,
                                                                      )
                                                                    : Icon(
                                                                        Icons
                                                                            .favorite_border,
                                                                        color: Colors
                                                                            .red,
                                                                      ),
                                                                onPressed: () {
                                                                  data.isFavorite
                                                                      .toggle();
                                                                },
                                                              ),
                                                            )),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                // SizedBox(height: 8),
                                // Text(
                                //   data.price.toString() ?? "",
                                //   style: TextStyle(
                                //       fontFamily: 'avenir',
                                //       fontWeight: FontWeight.w800),
                                //   overflow: TextOverflow.ellipsis,
                                // ),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
          }),
        ),
      ),
    );
  }
}
