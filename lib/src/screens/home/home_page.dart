import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web/rendering.dart';
import 'package:flutter_web/widgets.dart';
import 'package:whatsapp_web/src/models/room.dart';
import 'package:whatsapp_web/src/screens/chat/chat_page.dart';
import 'package:whatsapp_web/src/screens/conversations/conversations_page.dart';
import 'package:whatsapp_web/src/screens/initial/initial_screen.dart';
import 'package:whatsapp_web/src/shared/blocs/room_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildScreen() {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(7), boxShadow: [
        BoxShadow(color: Colors.black26, blurRadius: 4),
      ]),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: ConversationsPage(),
          ),
          Expanded(
            flex: 7,
            child: StreamBuilder<Room>(
                stream: BlocProvider.getBloc<RoomBloc>().selectedRoom,
                builder: (context, snapshot) {
                  if(!snapshot.hasData) return InitialPage();
                  return ChatPage(room: snapshot.data);
                }),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(child: Container(color: Color(0xFF009688))),
              Expanded(flex: 6, child: Container(color: Color(0xFFdfdfdf))),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1400, maxHeight: 920),
              child: _buildScreen(),
            ),
          ),
        ],
      ),
    );
  }
}
