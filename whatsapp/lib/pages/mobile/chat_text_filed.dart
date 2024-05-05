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
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: messageController,
              decoration: InputDecoration(
                hintText: 'Message',
                hintStyle: TextStyle(color: context.theme.greyColor),
                filled: true,
                fillColor: context.theme.chatTextFieldBg,
                isDense: true,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    style: BorderStyle.none,
                    width: 0,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                prefixIcon: Material(
                  color: context.theme.chatTextFieldBg,
                  child: CustomIconButton(
                    onPressed: () {},
                    icon: Icons.emoji_emotions_outlined,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RotatedBox(
                      quarterTurns: 45,
                      child: CustomIconButton(
                        icon: Icons.attach_file,
                        onPressed: () {},
                      ),
                    ),
                    CustomIconButton(
                      icon: Icons.camera_alt_outlined,
                      onPressed: () {},
                    )
                  ],
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
            child: CircleAvatar(
              radius: 25,
              backgroundColor: context.theme.senderChatCardBg,
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
            ),
          )
        ],
      ),
    );
  }
}
