import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/index_controller.dart';

class ButtonMenuItem extends StatefulWidget {
  const ButtonMenuItem({
    Key? key,
    required this.textIcon,
    required this.text,
    required this.onTap,
    required this.index,
  }) : super(key: key);

  final IconData textIcon;
  final String text;
  final Function() onTap;
  final int index;

  @override
  State<ButtonMenuItem> createState() => _ButtonMenuItemState();
}

class _ButtonMenuItemState extends State<ButtonMenuItem> {
  IndexController? indexController;
  @override
  void initState() {
    indexController = Get.find(tag: "index");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Obx(
        () => Container(
          color: widget.index == indexController!.colorIndex.value
              ? const Color.fromARGB(255, 57, 5, 58).withOpacity(0.6)
              : Colors.transparent,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              hoverColor: const Color.fromARGB(255, 41, 3, 47),
              onTap: widget.onTap,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 25,
                  width: 130,
                  child: Row(
                    children: [
                      Icon(
                        widget.textIcon,
                        color: Colors.white60,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.text,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
