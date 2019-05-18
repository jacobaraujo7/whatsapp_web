import 'package:flutter_web/material.dart';
import 'package:whatsapp_web/src/models/message.dart';

import 'message_blob_clipper.dart';

class MessageBlobComponent extends StatelessWidget {
  final bool me;
  final Message message;

  const MessageBlobComponent({
    Key key,
    this.me,
    this.message,
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
            padding: EdgeInsets.fromLTRB(me ? 9 : 19, 6, me ? 17 : 7, 3),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                if (!me)
                  Text(
                    "~${message.user.nick}",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                SizedBox(height: 5),
                Text(
                  message.message,
                  style: TextStyle(fontSize: 14),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    message.formatedDateTime,
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
