import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controller/index_controller.dart';
import '../widget/circle_menu_item.dart';

import '../widget/my_menu.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  IndexController? indexController;

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
      appBar: AppBar(backgroundColor: Colors.orange),
      drawer: MyMenu(indexController: indexController, items: items),
      body: Obx(
        () => Container(
          child: indexController!.getRightPage(),
        ),
      ),
    );
  }
}
