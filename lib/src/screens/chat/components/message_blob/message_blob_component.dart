import 'package:flutter_web/material.dart';

import 'message_blob_clipper.dart';

class MessageBlobComponent extends StatelessWidget {
  final bool me;
  final String content;

  const MessageBlobComponent({
    Key key,
    this.me,
    this.content,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: me ? Alignment.topRight : Alignment.topLeft,
      child: Container(
        width: 345.99,
        child: ClipPath(
          clipper: MessageClipper(me: me),
          child: Container(
            color: me ? Color(0xFFDCF8C6) : Colors.white,
            padding: EdgeInsets.fromLTRB(me ? 9 : 19, 6, me ? 17 : 7, 8),
            child: Text(content),
          ),
        ),
      ),
    );
  }
}
