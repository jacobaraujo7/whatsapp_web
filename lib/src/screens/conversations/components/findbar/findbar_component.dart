import 'package:flutter_web/material.dart';

class FindbarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      // color: Color(0xFFF8F8F8),
      // duration: Duration(milliseconds: 5),
      margin: EdgeInsets.fromLTRB(12, 7, 14, 7),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: 20,
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                size: 20,
                color: Theme.of(context).dividerColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*
import 'package:flutter_web/material.dart';

class FindbarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

*/
