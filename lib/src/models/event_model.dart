import 'package:whatsapp_web/src/models/message.dart';

class Event {
  final String event;
  final Message message;
  final int roomId;

  Event({this.event, this.message, this.roomId});


  factory Event.fromJson(dynamic json){
    return Event(event: json['event'], message: Message.fromJson(json['message']), roomId: json['roomId'],);
  }

  Map<String, dynamic> toJson(){
    return {
      "event" : event,
      "message" : message.toJson(),
      "roomId" : roomId,
    };
  }

}