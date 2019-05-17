import 'package:flutter_web/material.dart';

class FindbarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 35,
      color: Color(0xFFF8F8F8),
      duration: Duration(milliseconds: 5),
      margin: EdgeInsets.fromLTRB(12, 7, 14, 7),
      child: Container(
        padding: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Transform.translate(
          offset: Offset(0, -3),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search or start new chat",
              hintStyle: TextStyle(color: Color(0xFFBDC1C3)),
              prefixIcon: Icon(
                Icons.search,
                size: 18,
                color: Color(0xFFBDC1C3),
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
