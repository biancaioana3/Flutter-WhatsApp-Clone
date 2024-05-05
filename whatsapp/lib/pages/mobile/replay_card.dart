import 'package:flutter/material.dart';
import 'package:whatsapp/extension/custom_theme_extension.dart';

class ReplayCard extends StatelessWidget {
  const ReplayCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 60,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: context.theme.receiverChatCardBg,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 25,
                  top: 5,
                  bottom: 20,
                ),
                child: Text(
                  "Hey jhfdjgfdsj jhsfdjhs kgkhdfgsh",
                  style: TextStyle(
                    fontSize: 16,
                    color: context.theme.greyColor,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Text(
                  "20:05",
                  style: TextStyle(
                    fontSize: 13,
                    color: context.theme.greyColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
