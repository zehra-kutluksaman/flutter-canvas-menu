import 'package:design/controller/index_controller.dart';
import 'package:design/five.dart';
import 'package:design/widget/button_menu-item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RightPanelPageOne extends StatefulWidget {
  const RightPanelPageOne({
    Key? key,
  }) : super(key: key);

  @override
  State<RightPanelPageOne> createState() => _RightPanelPageOneState();
}

class _RightPanelPageOneState extends State<RightPanelPageOne> {
  IndexController? indexController;
  @override
  void initState() {
    indexController = Get.find(tag: "index");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.all(14.0),
              child: Text(
                "EXPLORE",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        const Divider(
          height: 10,
          color: Color.fromARGB(255, 122, 120, 120),
        ),
        //1.tıklama
        ButtonMenuItem(
          index: 0,
          onTap: () {
            indexController!.colorIndex.value = 0;
            indexController!.rightPageIndex.value = 0;
            Get.back();
          },
          text: 'Home',
          textIcon: Icons.home,
        ),

        //2.tıklama
        ButtonMenuItem(
          index: 1,
          onTap: () {
            indexController!.colorIndex.value = 1;
            indexController!.rightPageIndex.value = 1;
            Get.back();
          },
          text: 'Music',
          textIcon: Icons.music_note,
        ),

        //3.tıklama
        ButtonMenuItem(
          index: 2,
          onTap: () {
            indexController!.colorIndex.value = 2;
            indexController!.rightPageIndex.value = 2;
            Get.back();
          },
          text: 'Gaming',
          textIcon: Icons.three_g_mobiledata_sharp,
        ),
        //4.tıklama
        ButtonMenuItem(
          index: 3,
          onTap: () {
            indexController!.colorIndex.value = 3;
            indexController!.rightPageIndex.value = 3;
            Get.back();
          },
          text: 'Education',
          textIcon: Icons.edit_outlined,
        ),
        //5.tıklama
        ButtonMenuItem(
          index: 4,
          onTap: () {
            indexController!.colorIndex.value = 4;
            indexController!.rightPageIndex.value = 4;
            Get.back();
          },
          text: 'Science & Tech',
          textIcon: Icons.science,
        ),
        //6.tıklama
        ButtonMenuItem(
          index: 5,
          onTap: () {
            indexController!.colorIndex.value = 5;
            indexController!.rightPageIndex.value = 5;
            Get.back();
          },
          text: 'Entarteinment',
          textIcon: Icons.enhance_photo_translate,
        ),
        //7.tıklama
        ButtonMenuItem(
          index: 6,
          onTap: () {
            indexController!.colorIndex.value = 6;
            indexController!.rightPageIndex.value = 6;
            Get.back();
          },
          text: 'Student Hubs',
          textIcon: Icons.system_security_update_good_outlined,
        ),
      ],
    );
  }
}
