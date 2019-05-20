import 'package:flutter_web/material.dart';
import 'package:whatsapp_web/src/models/message.dart';
import 'package:whatsapp_web/src/models/room.dart';
import 'package:whatsapp_web/src/models/user.dart';
import 'package:whatsapp_web/src/shared/mixins/after_layout_mixin.dart';
import 'package:whatsapp_web/src/shared/widgets/custom_scrollbar/custom_scrollbar_widget.dart';

import 'components/message_blob/message_blob_component.dart';

class ChatPage extends StatefulWidget {
  final Room room;

  const ChatPage({Key key, this.room}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> with AfterLayoutMixin {
  ScrollController _controller;
  Size contextSize;

  Widget _buildMessage() {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          color: Color(0xFFE5DDD5),
          child: Opacity(
            opacity: 0.07,
            child: Image.asset(
              "images/background-chat.png",
              fit: BoxFit.contain,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
        CustomScrollbarWidget(
          controller: _controller,
          child: ListView.separated(
            controller: _controller,
            padding: EdgeInsets.symmetric(
                vertical: 18,
                horizontal: MediaQuery.of(context).size.width * 0.05),
            itemCount: 50,
            separatorBuilder: (context, index) => Container(height: 10),
            itemBuilder: (context, index) {
              return MessageBlobComponent(
                me: index.isEven,
                message: Message(
                  user: User(
                    id: index.toString(),
                    nick: index.isEven ? "Usuário 01" : "Usuário 2",
                  ),
                  message: "Teste $index",
                  time: DateTime.now().millisecondsSinceEpoch,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildInputBox() {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 121.96),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFefefef),
          border: Border(
            top: BorderSide(color: Colors.grey[300]),
            left: BorderSide(color: Colors.grey[300]),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 57),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(22),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: TextField(
                          maxLines: null,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            hintText: "Type a message",
                            border: InputBorder.none,
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: -5,
                    child: IconButton(
                      padding: EdgeInsets.symmetric(horizontal: 19),
                      icon: Icon(Icons.sentiment_very_satisfied, size: 26),
                      onPressed: () {},
                      color: Colors.grey,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: -5,
                    child: IconButton(
                      padding: EdgeInsets.symmetric(horizontal: 19),
                      icon: Icon(
                        Icons.mic,
                        size: 26,
                      ),
                      onPressed: () {},
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      height: 59,
      decoration: BoxDecoration(
        color: Color(0XFFefefef),
        border: Border(
          bottom: BorderSide(color: Colors.grey[300]),
          left: BorderSide(color: Colors.grey[300]),
        ),
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: CircleAvatar(
              backgroundColor: Theme.of(context).dividerColor,
              backgroundImage: NetworkImage(
                widget.room.img,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(widget.room.title, style: TextStyle(fontSize: 16)),
              Container(height: 5),
              Text(
                "Online",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Colors.grey,
          ),
          IconButton(
            icon: Icon(Icons.attach_file),
            onPressed: () {},
            color: Colors.grey,
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
            color: Colors.grey,
          ),
          Container(
            width: 20,
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
  }

  @override
  void afterLayout(Duration duration) {
    _controller.position.moveTo(
      _controller.position.maxScrollExtent,
    );

    contextSize = context.size;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          _buildAppBar(),
          Expanded(
            child: _buildMessage(),
          ),
          _buildInputBox(),
        ],
      ),
    );
  }
}
