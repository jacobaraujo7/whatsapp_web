import 'package:flutter_web/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:whatsapp_web/src/screens/home/home_page.dart';
import 'package:whatsapp_web/src/shared/blocs/room_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [
        Bloc((i) => RoomBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter WhatsApp',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          dividerColor: Color(0xFFF2F2F2),
          fontFamily: "Roboto",
          appBarTheme: AppBarTheme(
            color: Color(0xFFEEEEEE),
          ),
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: TextStyle(fontSize: 14),
          ),
        ),
        home: HomePage(),
      ),
    );
  }
}
