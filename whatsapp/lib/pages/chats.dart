import 'package:flutter/material.dart';
import 'package:whatsapp/Model/ChatModel.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  List<ChatModel> chats = [
    ChatModel(
      name: "Dev Stack",
      icon: "peron",
      isGroup: false,
      time: "4:00",
      currentMessage: '',
    ),
    ChatModel(
      name: "Dev Stack",
      icon: "peron",
      isGroup: false,
      time: "4:00",
      currentMessage: '',
    )
  ];

  @override
  Widget build(BuildContext context) {}
}
