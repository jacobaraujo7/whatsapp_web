import 'package:flutter_web/material.dart';

class ScrollThumb extends StatelessWidget {
  final double height;

  const ScrollThumb({Key key, this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5,
      color: Colors.grey.withOpacity(0.5),
      height: height,
    );
  }
}
