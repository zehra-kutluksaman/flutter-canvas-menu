import 'package:design/controller/index_controller.dart';
import 'package:design/widget/pointer.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CircleMenuItem extends StatefulWidget {
  const CircleMenuItem({
    Key? key,
    required this.imageUrl,
    required this.onTap,
    required this.index,
  }) : super(key: key);
  final String imageUrl;
  final Function() onTap;
  final int index;

  @override
  State<CircleMenuItem> createState() => _CircleMenuItemState();
}

class _CircleMenuItemState extends State<CircleMenuItem> {
  IndexController? indexController;
  @override
  void initState() {
    indexController = Get.find(tag: "index");
    super.initState();
  }

  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        //hoverColor: Colors.grey,

        //splashColor: Colors.white,
        onTap: widget.onTap,
        child: Row(
          children: [
            ClipPath(
              clipper: PointerClipper(),
              child: widget.index == indexController!.index.value
                  ? Container(
                      width: 25,
                      height: 30,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFA473E5),
                            Color(0xFF6BBFEF),
                          ],
                        ),
                      ),
                    )
                  : Container(
                      width: 25,
                      height: 30,
                      color: Colors.transparent,
                    ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: widget.index == indexController!.index.value
                        ? const Color.fromARGB(255, 252, 73, 255)
                            .withOpacity(0.6)
                        : Colors.transparent,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: widget.onTap,
                  hoverColor:
                      const Color.fromARGB(153, 250, 240, 240).withOpacity(0.6),
                  borderRadius: BorderRadius.circular(17),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: const Color.fromARGB(255, 242, 240, 242),
                    backgroundImage: NetworkImage(widget.imageUrl),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
