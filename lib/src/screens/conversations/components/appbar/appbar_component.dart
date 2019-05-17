import 'package:flutter_web/material.dart';

class AppbarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 59,
      color: Theme.of(context).appBarTheme.color,
      child: ListTile(
        leading: CircleAvatar(),
        trailing: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.chat),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
