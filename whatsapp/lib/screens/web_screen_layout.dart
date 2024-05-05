import 'package:flutter/material.dart';
import 'package:whatsapp/Model/ChatModel.dart';
import 'package:whatsapp/pages/web/chat_page.dart';
import 'package:whatsapp/pages/web/start_page.dart';
import 'package:whatsapp/utils/custom_icon_button.dart';
import 'package:whatsapp/pages/web/individual_page.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        name: "Mihai",
        icon: "person",
        isGroup: false,
        time: "5:00",
        currentMessage: 'hello',
        messages: [],
      )
    ];

    final ValueNotifier<ChatModel?> selectedChat =
        ValueNotifier<ChatModel?>(null);

    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        top: 20,
        bottom: 20,
      ),
      child: Scaffold(
        body: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.grey[300],
                    child: Scaffold(
                      appBar: AppBar(
                        actions: [
                          CustomIconButton(
                            icon: Icons.more_vert,
                            onPressed: () {},
                          ),
                        ],
                      ),
                      body: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Container(
                              height: 35.0,
                              width: 300.0,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search',
                                  hintStyle: TextStyle(),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    size: 12,
                                  ),
                                ),
                                style: TextStyle(fontSize: 12.0),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: chats.length,
                              itemBuilder: (context, index) => Chat(
                                chatModel: chats[index],
                                onTap: () {
                                  selectedChat.value = chats[index];
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: ValueListenableBuilder<ChatModel?>(
                    valueListenable: selectedChat,
                    builder: (context, value, child) {
                      if (value == null) {
                        return StartPage();
                      } else {
                        return IndividualPage(chatModel: value);
                      }
                    },
                  ),
                ),
              ],
            ),
            Positioned(
              top: 0,
              width: MediaQuery.of(context).size.width * 0.285,
              child: AppBar(
                title: Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blueGrey,
                      child: Icon(
                        Icons.person,
                        size: 20,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.circle_outlined),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.message_outlined),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.chat_bubble_outline_outlined),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
