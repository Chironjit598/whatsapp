import 'package:flutter/material.dart';
import 'package:whatsapp/view/widget/chat_item_listtile.dart';

class ChatPages extends StatefulWidget {
  const ChatPages({super.key});

  @override
  State<ChatPages> createState() => _ChatPagesState();
}

class _ChatPagesState extends State<ChatPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          chatItemListTile(),
          chatItemListTile(),
          chatItemListTile(),
        ],
      ),
    );
  }
}
