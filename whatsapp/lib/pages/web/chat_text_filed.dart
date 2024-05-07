import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:whatsapp/extension/custom_theme_extension.dart';
import 'package:whatsapp/utils/custom_icon_button.dart';

class ChatTextFiled extends StatefulWidget {
  const ChatTextFiled(
      {Key? key, required this.receiverId, required this.onMessageSent})
      : super(key: key);

  final String receiverId;
  final void Function(String message) onMessageSent;

  @override
  State<ChatTextFiled> createState() => _ChatTextField();
}

class _ChatTextField extends State<ChatTextFiled> {
  late TextEditingController messageController;

  @override
  void initState() {
    messageController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.appBarWebColor,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Icon(
              Icons.add,
            ),
            Expanded(
              child: TextFormField(
                controller: messageController,
                decoration: InputDecoration(
                  hintText: 'Type a message',
                  hintStyle: TextStyle(color: context.theme.greyColor),
                  filled: true,
                  fillColor: context.theme.chatTextFieldBg,
                  isDense: true,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      style: BorderStyle.none,
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Material(
                    color: context.theme.chatTextFieldBg,
                    child: CustomIconButton(
                      onPressed: () {},
                      icon: Icons.emoji_emotions_outlined,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 2,
                right: 2,
                left: 2,
              ),
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  String message = messageController.text;
                  if (message.isNotEmpty) {
                    widget.onMessageSent(message);
                    messageController.clear();
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
