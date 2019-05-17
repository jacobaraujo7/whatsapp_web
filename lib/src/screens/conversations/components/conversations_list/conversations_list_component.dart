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
          return ListTile(
            leading: CircleAvatar(),
            title: Text("Conversation $index"),
            subtitle: Text("Received message ..."),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("18:34", style: TextStyle(fontSize: 12)),
              ],
            ),
          );
        },
      ),
    );
  }
}
