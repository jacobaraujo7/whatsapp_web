import 'package:flutter_web/material.dart';

class FindbarComponent extends StatefulWidget {
  @override
  _FindbarComponentState createState() => _FindbarComponentState();
}

class _FindbarComponentState extends State<FindbarComponent> {
  var _focus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _focus,
      builder: (context, child) {
        return AnimatedContainer(
          child: child,
          height: 49,
          duration: Duration(milliseconds: 300),
          padding: EdgeInsets.fromLTRB(12, 7, 14, 7),
          margin: EdgeInsets.only(bottom: _focus.hasFocus ? 5 : 0),
          decoration: BoxDecoration(
            color: _focus.hasFocus ? Colors.white : Color(0xFFF8F8F8),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: _focus.hasFocus ? 4 : 0,
              ),
            ],
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: <Widget>[
            Transform.translate(
              offset: Offset(0, -3),
              child: TextField(
                focusNode: _focus,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search or start new chat",
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            _buildIcon(),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon() {
    return AnimatedBuilder(
      animation: _focus,
      builder: (context, child) {
        return Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 10),
          child: !_focus.hasFocus
              ? Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 18,
                )
              : InkWell(
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.blue,
                    size: 18,
                  ),
                ),
        );
      },
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
