import 'package:flutter_web/material.dart';

class AppbarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 59,
      color: Theme.of(context).appBarTheme.color,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).dividerColor,
          backgroundImage: NetworkImage(
            "https://media.licdn.com/dms/image/C5603AQEKYex09zfWlg/profile-displayphoto-shrink_100_100/0?e=1563408000&v=beta&t=5FoN-PaQjLNlPGFqXKW2V4pvUqTPd5QfNNUnovyT5ic",
          ),
        ),
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
