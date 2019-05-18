// import 'dart:convert';

import 'package:bloc_pattern/bloc_pattern.dart';
// import 'package:web_socket_channel/io.dart';
import 'package:whatsapp_web/src/models/event_model.dart';
// import 'package:rxdart/rxdart.dart';

class ChannelBloc extends BlocBase {
  Map<dynamic, List<Event>> mapEvents = {
    "0": [],
    "1": [],
    "2": [],
    "3": [],
  };

  // IOWebSocketChannel channel =
  //     IOWebSocketChannel.connect("ws://a3b1c077.ngrok.io/connect");
  // Stream<Event> get eventOut => channel.stream.map((v) {
  //       var event = Event.fromJson(jsonEncode(v.toString()));
  //       mapEvents["${event.roomId}"].add(event);
  //       return event;
  //     }).asBroadcastStream();

  // Observable<List<Event>> get eventList =>
  //     Observable<Event>(eventOut).map((event) => mapEvents["${event.roomId}"]);

  @override
  void dispose() {
    // channel.sink.close();
    super.dispose();
  }
}
