import 'package:flutter/material.dart';

class PointerPath extends StatelessWidget {
  const PointerPath({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 3,
      height: 8,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.purple,
          ],
        ),
      ),
      child: ClipPath(
        clipper: PointerClipper(),
      ),
    );
  }
}

class PointerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path1 = Path();
    path1.moveTo(size.width * 0.5000000, size.height * 0.0100000);
    path1.quadraticBezierTo(size.width * 0.6971000, size.height * 0.4189000,
        size.width * 0.8400000, size.height * 0.5000000);
    path1.quadraticBezierTo(size.width * 0.6050000, size.height * 0.6687000,
        size.width * 0.5000000, size.height * 0.9900000);
    path1.cubicTo(
        size.width * 0.4206000,
        size.height * 0.6746000,
        size.width * 0.2829000,
        size.height * 0.4925000,
        size.width * 0.5000000,
        size.height * 0.0100000);
    path1.close();

    return path1;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
