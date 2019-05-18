import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_web/material.dart';
import 'package:whatsapp_web/src/models/room.dart';
import 'package:whatsapp_web/src/shared/blocs/room_bloc.dart';

class ConversationsListComponent extends StatelessWidget {
  final List<Room> list = [
    Room(
      img:
          "https://is2-ssl.mzstatic.com/image/thumb/Purple122/v4/4c/6a/df/4c6adfa3-b9c0-25aa-60f9-99701b172b1f/AppIcon-1x_U007emarketing-85-220-0-3.png/246x0w.jpg",
      title: "Sala 1",
    ),
    Room(
      img:
          "https://is2-ssl.mzstatic.com/image/thumb/Purple122/v4/4c/6a/df/4c6adfa3-b9c0-25aa-60f9-99701b172b1f/AppIcon-1x_U007emarketing-85-220-0-3.png/246x0w.jpg",
      title: "Sala 2",
    ),
    Room(
      img:
          "https://is2-ssl.mzstatic.com/image/thumb/Purple122/v4/4c/6a/df/4c6adfa3-b9c0-25aa-60f9-99701b172b1f/AppIcon-1x_U007emarketing-85-220-0-3.png/246x0w.jpg",
      title: "Sala 3",
    ),
    Room(
      img:
          "https://is2-ssl.mzstatic.com/image/thumb/Purple122/v4/4c/6a/df/4c6adfa3-b9c0-25aa-60f9-99701b172b1f/AppIcon-1x_U007emarketing-85-220-0-3.png/246x0w.jpg",
      title: "Sala 4",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.separated(
        itemCount: list.length,
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
          Room room = list[index];
          return StreamBuilder<Room>(
            stream: BlocProvider.getBloc<RoomBloc>().selectedRoom,
            builder: (context, snapshot) {
              return ListTile(
                selected: snapshot?.data == room,
                leading: CircleAvatar(
                  backgroundColor: Theme.of(context).dividerColor,
                  backgroundImage: NetworkImage(room.img),
                ),
                title: Text(room.title),
                subtitle: Text(
                  "Received message",
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text("18:34", style: TextStyle(fontSize: 12)),
                  ],
                ),
                onTap: () {
                  BlocProvider.getBloc<RoomBloc>().enterRoom(room);
                },
              );
            },
          );
        },
      ),
    );
  }
}
