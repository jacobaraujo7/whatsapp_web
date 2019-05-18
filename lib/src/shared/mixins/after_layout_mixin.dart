import 'package:flutter_web/material.dart';

mixin AfterLayoutMixin<T extends StatefulWidget> on State<T>{
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(afterLayout);
  }

  void afterLayout(Duration duration);
}