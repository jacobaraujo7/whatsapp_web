import 'package:whatsapp_web/src/models/message.dart';

class Event {
  final String event;
  final Message message;
  final int roomId;

  Event({this.event, this.message, this.roomId});
}