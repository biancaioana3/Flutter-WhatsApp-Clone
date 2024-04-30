import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blueGrey,
            child: Icon(
              Icons.person,
              size: 30,
            ),
          ),
          title: Text(
            "Dev Stack",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Row(
            children: [
              Icon(Icons.done_all),
              SizedBox(
                width: 3,
              ),
              Text(
                "Hi Dev Stack",
                style: TextStyle(
                  fontSize: 13,
                ),
              )
            ],
          ),
          trailing: Text("18:04"),
        ),
        Padding(
          padding: EdgeInsets.only(
            right: 20,
            left: 80,
          ),
          child: Divider(
            thickness: 1,
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blueGrey,
            child: Icon(
              Icons.person,
              size: 30,
            ),
          ),
          title: Text(
            "Dev Stack",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Row(
            children: [
              Icon(Icons.done_all),
              SizedBox(
                width: 3,
              ),
              Text(
                "Hi Dev Stack",
                style: TextStyle(
                  fontSize: 13,
                ),
              )
            ],
          ),
          trailing: Text("18:04"),
        ),
        Padding(
          padding: EdgeInsets.only(
            right: 20,
            left: 80,
          ),
          child: Divider(
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
