import 'package:flutter/material.dart';
import 'message_bubble.dart';

class MessageList extends StatelessWidget {
  const MessageList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> messages = [
      {"text": "Hello!", "isMe": true},
      {"text": "Hi there! How are you?", "isMe": false},
      {"text": "I'm good, thanks! And you?", "isMe": true},
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        return MessageBubble(
          text: message["text"] as String,
          isMe: message["isMe"] as bool,
        );
      },
    );
  }
}
