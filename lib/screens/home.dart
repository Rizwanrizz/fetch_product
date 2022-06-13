import 'package:fetch_product/controllers/datacontroller.dart';
import 'package:fetch_product/models/datamodel.dart';
import 'package:fetch_product/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final controller = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          width: 410,
          height: 798.59765625,
          decoration: const BoxDecoration(
            color: Color(0xff2a2770),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 80),
                    const Text(
                      "الكترونيات",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.notifications_none,
                            color: Colors.white,
                            size: 26.0,
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.chat,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:
                            const EdgeInsets.only(bottom: 90.0, top: 190.0),
                        transform: Matrix4.translationValues(0.0, -140.0, 0.0),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/Path 57288.png"),
                            fit: BoxFit.cover,
                            alignment: Alignment.bottomLeft,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 668,
                    decoration: BoxDecoration(
                      color: Color(0xfff6f9fc),
                      borderRadius: BorderRadius.circular(34),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: // line
                            Container(
                          width: 359,
                          height: 48,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                              color: Color.fromARGB(255, 155, 190, 243)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 20),
                            child: Align(
                              alignment: Alignment.center,
                              child: Row(
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  IconButton(
                                    icon: const Icon(Icons.filter_list),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.menu),
                                    onPressed: () {},
                                  ),
                                  buildDivider(),
                                  IconButton(
                                    icon: const Icon(Icons.grid_view),
                                    onPressed: () {},
                                  ),
                                  new Text("135  منتج",
                                      style: TextStyle(
                                        fontFamily: 'Sukar',
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w900,
                                        fontStyle: FontStyle.normal,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Text(value,
                style: TextStyle(
                  fontFamily: 'Sukar',
                  color: const Color(0xff2a2770),
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.normal,
                )),
            SizedBox(height: 2),
            new Text(text,
                style: TextStyle(
                  fontFamily: 'Sukar',
                  color: Color(0xfff15f12),
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.normal,
                ))
          ],
        ),
      );
  Widget buildDivider() => Container(
        height: 32,
        margin: EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromARGB(255, 172, 171, 171),
            width: 1,
          ),
        ),
      );
}
