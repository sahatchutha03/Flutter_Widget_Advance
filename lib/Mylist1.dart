import 'package:flutter/material.dart';

class Mylist1 extends StatelessWidget {
  const Mylist1({super.key});

  final List<Map<String, dynamic>> messages = const [
    {'Text': 'ไปตลาดป่าว', 'isMe': true},
    {'Text': 'ไปๆๆ', 'isMe': false},
    {'Text': 'กินไรดี', 'isMe': true},
    {'Text': 'บะหมี่', 'isMe': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat Bubble')),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, i) {
          final m = messages[i];
          final isMe = m['isMe'] as bool;
          return Align(
            alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: isMe ? Colors.blue.shade400 : Colors.grey.shade300,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Text(
                m['Text'],
                style: TextStyle(color: isMe ? Colors.white : Colors.black),
              ),
            ),
          );
        },
      ),
    );
  }
}
