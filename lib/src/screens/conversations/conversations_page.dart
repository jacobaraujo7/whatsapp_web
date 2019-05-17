import 'package:flutter_web/material.dart';
import 'package:whatsapp_web/src/screens/conversations/components/conversations_list/conversations_list_component.dart';

import 'components/appbar/appbar_component.dart';
import 'components/findbar/findbar_component.dart';

class ConversationsPage extends StatefulWidget {
  @override
  _ConversationsPageState createState() => _ConversationsPageState();
}

class _ConversationsPageState extends State<ConversationsPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFF8F8F8),
      child: Column(
        children: <Widget>[
          AppbarComponent(),
          FindbarComponent(),
          Expanded(child: ConversationsListComponent()),
        ],
      ),
    );
  }
}
