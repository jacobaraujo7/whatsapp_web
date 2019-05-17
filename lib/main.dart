import 'package:flutter_web/material.dart';
import 'package:whatsapp_web/src/screens/home/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        dividerColor: Color(0xFFBDC1C3),
        fontFamily: "Roboto",
        appBarTheme: AppBarTheme(
          color: Color(0xFFEEEEEE),
        ),
      ),
      home: HomePage(),
    );
  }
}
