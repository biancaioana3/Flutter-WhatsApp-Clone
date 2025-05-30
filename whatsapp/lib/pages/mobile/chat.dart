import 'package:flutter/material.dart';
import 'package:whatsapp/Model/ChatModel.dart';
import 'package:whatsapp/extension/custom_theme_extension.dart';
import 'package:whatsapp/pages/mobile/individual_page.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IndividualPage(chatModel: chatModel),
          ),
        );
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: context.theme.photoIconBgColor,
              child: Icon(
                chatModel.isGroup ? Icons.group : Icons.person,
                color: context.theme.photoIconColor,
                size: 30,
              ),
            ),
            title: Text(
              chatModel.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  chatModel.currentMessage,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                )
              ],
            ),
            trailing: Text(chatModel.time),
          ),
          const Padding(
            padding: EdgeInsets.only(
              right: 20,
              left: 80,
            ),
            child: Divider(
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
