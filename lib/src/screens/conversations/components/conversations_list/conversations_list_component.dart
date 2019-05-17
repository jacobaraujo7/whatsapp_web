import 'package:flutter_web/material.dart';

class ConversationsListComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.separated(
        itemCount: 50,
        separatorBuilder: (context, index) {
          return Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 1,
                  margin: EdgeInsets.only(left: 70, right: 10),
                  color: Theme.of(context).dividerColor,
                ),
              ),
            ],
          );
        },
        itemBuilder: (context, index) {
          if (index == 0) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://media.licdn.com/dms/image/C5603AQFTmUkulb9RXA/profile-displayphoto-shrink_800_800/0?e=1563408000&v=beta&t=SkR--HptIqilOHLbjCQQTjrFuFzFkapsz-GS4Lb9_Cw",
                ),
              ),
              title: Text("Vilson"),
              subtitle: Text("Oi bb"),
              trailing: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("18:34", style: TextStyle(fontSize: 12)),
                ],
              ),
            );
          } else {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://i.pravatar.cc/150?img=$index",
                ),
              ),
              title: Text("Conversation $index"),
              subtitle: Text("Received message ..."),
              trailing: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("18:34", style: TextStyle(fontSize: 12)),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
