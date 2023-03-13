import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/index_controller.dart';
import 'costum_path.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({
    Key? key,
    required this.indexController,
    required this.items,
  }) : super(key: key);

  final IndexController? indexController;
  final List items;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Row(
              children: [
                //sol taraf

                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.8, 1),
                      colors: <Color>[
                        Color(0xFF59479e),
                        Color(0xFF836FAF),
                      ],
                    ),
                  ),
                  // ),
                  child: Column(
                    children: [
                      ClipPath(
                        clipper: MyClipper(),
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment(0.8, 1),
                              colors: <Color>[
                                Color(0xFF4B447C),
                                Color(0xFF5A5180)
                              ],
                            ),
                          ),
                          alignment: Alignment.topLeft,
                          width: 65,
                          height: 753,
                          child: Column(
                            children: [
                              //küçük circle
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.red,
                                    ),
                                    SizedBox(width: 5),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.yellow,
                                    ),
                                    SizedBox(width: 5),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Colors.green,
                                    ),
                                    SizedBox(width: 5),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //sağ taraf
                Column(
                  children: [
                    Obx(
                      () => Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment(0.8, 1),
                            colors: <Color>[
                              Color(0xFF564C8C),
                              Color(0xFF786896)
                            ],
                            tileMode: TileMode.mirror,
                          ),
                        ),
                        width: 239,
                        height: 753,
                        child: indexController!.getPage(),
                      ),
                    ),
                    //sağ sayfalar
                  ],
                ),
              ],
            ),

            //circle avatarlar
            Positioned(
              left: -8,
              top: 25,
              child: Column(
                children: [
                  const Material(
                    color: Colors.transparent,
                    child: InkWell(
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, right: 10),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 75, 60, 74),
                          radius: 17,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    height: 750,
                    width: 65,
                    child: ListView.builder(
                      itemBuilder: (context, index) => items[index],
                      itemCount: items.length,
                      shrinkWrap: true,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
