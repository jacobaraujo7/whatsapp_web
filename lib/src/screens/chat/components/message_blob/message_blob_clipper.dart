import 'package:flutter_web/material.dart';

class MessageClipper extends CustomClipper<Path> {
  final bool me;
  MessageClipper({this.me = true});

  @override
  Path getClip(Size size) {
    var path = new Path();
    double space = 7;
    double radius = 5;

    if (me) {
      path
        ..moveTo(radius, 0)
        ..lineTo(size.width, 0)
        ..lineTo(size.width - space, space)
        ..lineTo(size.width - space, size.height - radius)
        ..quadraticBezierTo(size.width - space, size.height, size.width - space - radius, size.height)
        ..lineTo(radius, size.height)
        ..quadraticBezierTo(0, size.height, 0, size.height - radius)
        ..lineTo(0, radius)
        ..quadraticBezierTo(0, 0, radius, 0)
        ..close();
    } else {
      path
        ..moveTo(0, 0)
        ..lineTo(size.width-radius, 0)
        ..quadraticBezierTo(size.width, 0, size.width, radius)
        ..lineTo(size.width, size.height - radius)
        ..quadraticBezierTo(size.width, size.height, size.width - radius, size.height)
        ..lineTo(space + radius, size.height)
        ..quadraticBezierTo(space, size.height, space, size.height - radius)
        ..lineTo(space, space)
        ..lineTo(0, 0)
        ..close();
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
