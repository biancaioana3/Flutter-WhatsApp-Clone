class ChatModel {
  String name;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;
  List<String> messages = [];

  ChatModel({
    required this.name,
    required this.icon,
    required this.isGroup,
    required this.time,
    required this.currentMessage,
    required this.messages,
  });
}
