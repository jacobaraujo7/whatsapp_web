import 'package:flutter_web/material.dart';

class ConversationsListComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: 50,
        // separatorBuilder: (context, index) => Divider(height: 0),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(),
            title: Text("Conversation $index"),
            subtitle: Text("Received message ..."),
          );
        },
      ),
    );
  }
}
