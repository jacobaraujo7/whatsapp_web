
import 'package:whatsapp_web/src/models/message.dart';

class Room {
  final String title;
  final String img;
  final List<Message> messages;

  Room({this.title, this.img, this.messages});
}