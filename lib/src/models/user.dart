class User {
  final String nick;
  final String id;
  User({this.nick, this.id});

  factory User.fromJson(dynamic json) {
    return User(
      nick: json['nick'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      "nick" : nick,
      "id" : id,
    };
  }

}
