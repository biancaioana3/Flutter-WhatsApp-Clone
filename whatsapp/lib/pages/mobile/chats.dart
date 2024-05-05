import 'package:flutter/material.dart';
import 'package:whatsapp/Model/ChatModel.dart';
import 'package:whatsapp/pages/mobile/chat.dart';

class Chats extends StatelessWidget {
  Chats({Key? key}) : super(key: key);

  final List<ChatModel> chats = [
    ChatModel(
      name: "Dev Stack",
      icon: "person",
      isGroup: false,
      time: "4:00",
      currentMessage: 'hi',
      messages: [],
    ),
    ChatModel(
      name: "Dev Stack",
      icon: "person",
      isGroup: false,
      time: "5:00",
      currentMessage: 'hello',
      messages: [],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => Chat(chatModel: chats[index]),
      ),
    );
  }
}
