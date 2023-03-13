import 'package:design/widget/my_design.dart';
import 'package:design/responsive/desktop.dart';
import 'package:design/responsive/mobile.dart';
import 'package:design/responsive/responsive.dart';
import 'package:design/responsive/tablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Responsive(
        mobile: Mobile(),
        tablet: Tablet(),
        desktop: Desktop(),
      ),
    );
  }
}
