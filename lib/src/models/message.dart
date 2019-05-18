import 'package:whatsapp_web/src/models/user.dart';

class Message {
  final int time;
  final User user;
  final String message;

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