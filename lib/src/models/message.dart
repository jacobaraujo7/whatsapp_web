import 'package:whatsapp_web/src/models/user.dart';

class Message {
  final int time;
  final User user;
  final String message;

  DateTime get dateTime => DateTime.fromMillisecondsSinceEpoch(time);
  String get formatedDateTime => "${dateTime.day.toString().padLeft(2, "0")}/${dateTime.month.toString().padLeft(2, "0")}/${dateTime.year.toString().padLeft(2, "0")} ${dateTime.hour.toString().padLeft(2, "0")}:${dateTime.minute.toString().padLeft(2, "0")}";
  // DateTime get formatedDateTime => DateTime.fromMillisecondsSinceEpoch(time);

  Message({this.time, this.user, this.message});

  factory Message.fromJson(dynamic json){
    return Message(time: json['time'], user: User.fromJson(json['user']), message: json['message'],);
  }

  Map<String, dynamic> toJson(){
    return {
      "time" : time,
      "user" : user.toJson(),
      "message" : message,
    };
  }


}