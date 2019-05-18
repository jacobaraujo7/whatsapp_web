import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:whatsapp_web/src/models/room.dart';

class RoomBloc extends BlocBase {

  StreamController<Room> _streamController = StreamController.broadcast();
  Stream<Room> get selectedRoom => _streamController.stream;
  
  Function(Room) get enterRoom => _streamController.add;


  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

}