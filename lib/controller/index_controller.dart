import 'package:design/five.dart';
import 'package:design/four.dart';
import 'package:design/screen/right_panel_screen.dart';
import 'package:design/three.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IndexController extends GetxController {
  Rx index = 0.obs;
  RxInt selectedPageIndex = 0.obs;
  RxInt rightPageIndex = 0.obs;
  RxInt colorIndex = 0.obs;

  List<Widget> pages = [
    const RightPanelPageOne(),
    Container(
      color: Colors.orange,
    ),
    const Three(),
    const Four(),
    const Five(),
  ];

  List<Widget> rightPages = [
    Container(
      child: const Center(child: Text("#Page1")),
    ),
    Container(
      child: const Center(child: Text("#Page2")),
    ),
    Container(
      child: const Center(child: Text("#Page3")),
    ),
    Container(
      child: const Center(child: Text("#Page4")),
    ),
    Container(
      child: const Center(child: Text("#Page5")),
    ),
    Container(
      child: const Center(child: Text("#Page6")),
    ),
    Container(
      child: const Center(child: Text("#Page7")),
    ),
  ];
  Widget getPage() {
    return pages[selectedPageIndex.value];
  }

  Widget getRightPage() {
    return rightPages[rightPageIndex.value];
  }
}
