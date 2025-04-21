import 'package:flutter/material.dart';
import '../widgets/chat_input_field.dart';
import '../widgets/message_list.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat App UI"),
      ),
      body: const Column(
        children: [
          Expanded(child: MessageList()),
          ChatInputField(),
        ],
      ),
    );
  }
}
