import 'package:design/controller/index_controller.dart';

import 'package:design/widget/costum_path.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'circle_menu_item.dart';

class MyDesign extends StatefulWidget {
  const MyDesign({super.key});

  @override
  State<MyDesign> createState() => _MyDesignState();
}

class _MyDesignState extends State<MyDesign> {
  IndexController? indexController;
  //int Index = 0;

  @override
  void initState() {
    indexController = Get.put(IndexController(), tag: "index");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List items = [
      //1.circle
      CircleMenuItem(
          index: 0,
          onTap: () {
            indexController!.index.value = 0;
            indexController!.selectedPageIndex.value = 0;
          },
          imageUrl:
              "https://media.istockphoto.com/id/104278480/tr/foto%C4%9Fraf/brown-bear.jpg?s=612x612&w=0&k=20&c=xqT7M6fpzBshQ8vDGWPsagCad38LrlglvuDBnPNsh8Q="),

      const SizedBox(height: 30),
      //2.circle
      CircleMenuItem(
          index: 1,
          onTap: () {
            indexController!.index.value = 1;
            indexController!.selectedPageIndex.value = 1;
          },
          imageUrl:
              "https://img-tlctv1.mncdn.com/upload/20-05/13/kopekler-hakkinda-620x350.jpg?0.9831753364930984"),
      const SizedBox(height: 30),

      //3.circle
      CircleMenuItem(
          index: 2,
          onTap: () {
            indexController!.index.value = 2;
            indexController!.selectedPageIndex.value = 2;
          },
          imageUrl:
              "https://i1.imgiz.com/rshots/8652/en-komik-sincap-videolari-top-10_8652622-8116_1280x720.jpg"),

      const SizedBox(height: 30),

      //4.circle
      CircleMenuItem(
          index: 3,
          onTap: () {
            indexController!.index.value = 3;
            indexController!.selectedPageIndex.value = 3;
          },
          imageUrl:
              "https://st1.myideasoft.com/idea/dt/62/myassets/blogs/tavsani-anlamak.jpg?revision=1642357380"),

      const SizedBox(height: 30),
      //5.circle
      CircleMenuItem(
          index: 4,
          onTap: () {
            indexController!.index.value = 4;
            indexController!.selectedPageIndex.value = 4;
          },
          imageUrl:
              "https://i1.imgiz.com/rshots/8652/en-komik-sincap-videolari-top-10_8652622-8116_1280x720.jpg"),
    ];

    return Scaffold(
      body: SingleChildScrollView(
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
                        width: 220,
                        height: 753,
                        child: indexController!.getPage(),
                      ),
                    ),
                    //sağ sayfalar
                  ],
                ),
                Obx(
                  () => Expanded(
                    child: Container(
                      child: indexController!.getRightPage(),
                    ),
                  ),
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
