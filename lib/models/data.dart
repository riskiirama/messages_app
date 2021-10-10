import 'package:messages/models/chat.dart';

class Data {
  static const chats = <Chat>[
    Chat(
      urlAvatar: 'assets/image_photo.png',
      username: 'Kunle Coker',
      message: 'Hello Kunle, are you going to the Burna Boy Live Concert?',
      time: '15:21',
    ),
    Chat(
      urlAvatar: 'assets/image_photo.png',
      username: 'Kunle Coker',
      message: 'Hello Kunle, are you going to the Burna Boy Live Concert?',
      time: '15:21',
    ),
    Chat(
      urlAvatar: 'assets/image_photo.png',
      username: 'Kunle Coker',
      message: 'Hello Kunle, are you going to the Burna Boy Live Concert?',
      time: '15:21',
    ),
  ];
}

class Data2 {
  static const notifs = <Notif>[
    Notif(
      name: 'Inbox notifications',
      desc: 'Get notified on new inbox messages',
    ),
  ];
}

class Notif {
  final String name;
  final String desc;

  const Notif({
    required this.name,
    required this.desc,
  });
}
