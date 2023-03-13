import 'package:design/widget/my_design.dart';
import 'package:flutter/material.dart';

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyDesign(),
    );
  }
}
