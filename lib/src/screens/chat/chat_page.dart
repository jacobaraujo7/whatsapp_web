import 'package:flutter_web/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  Widget _buildMessage() {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.network(
          "https://user-images.githubusercontent.com/15075759/28719144-86dc0f70-73b1-11e7-911d-60d70fcded21.png",
          fit: BoxFit.cover,
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
                "https://i.udemycdn.com/user/200_H/51101684_c590_2.jpg",
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Jacob Moura", style: TextStyle(fontSize: 16)),
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
