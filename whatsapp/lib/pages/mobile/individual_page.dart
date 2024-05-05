import 'package:flutter/material.dart';
import 'package:whatsapp/Model/ChatModel.dart';
import 'package:whatsapp/extension/custom_theme_extension.dart';
import 'package:whatsapp/pages/mobile/chat_text_filed.dart';
import 'package:whatsapp/pages/mobile/own_messages_card.dart';

class IndividualPage extends StatefulWidget {
  IndividualPage({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  _IndividualPageState createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  List<String> _messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back,
                size: 24,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: context.theme.photoIconBgColor,
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: context.theme.photoIconColor,
                ),
              )
            ],
          ),
        ),
        title: Container(
          margin: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.chatModel.name,
                style: const TextStyle(
                  fontSize: 18.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "last seen today at 20:05",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.videocam_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call_outlined)),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image(
              image: const AssetImage('assets/images/doodle_bg.png'),
              fit: BoxFit.cover,
              color: context.theme.photoIconBgColor,
            ),
          ),
          Column(
            children: [
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: _messages.map((message) {
                    return OwnMessagesCard(message: message);
                  }).toList(),
                ),
              ),
              ChatTextFiled(
                receiverId: widget.chatModel.name,
                onMessageSent: (message) {
                  setState(() {
                    _messages.add(message);
                  });
                },
              ),
            ],
          )
        ],
      ),
      backgroundColor: context.theme.chatPageBgColor,
    );
  }
}
