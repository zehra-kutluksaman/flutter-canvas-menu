import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;
  final Widget tablet;
  const Responsive(
      {super.key,
      required this.mobile,
      required this.desktop,
      required this.tablet});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrainst) {
        if (constrainst.maxWidth < 500) {
          return mobile;
        } else if (constrainst.maxWidth < 1100) {
          return tablet;
        } else {
          return desktop;
        }
      },
    );
  }
}
