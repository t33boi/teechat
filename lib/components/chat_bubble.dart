import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final Color? color;

  const ChatBubble({
    super.key,
    required this.message,
    required this.color,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        message,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
