import 'package:flutter/material.dart';

class Mylist4 extends StatelessWidget {
  const Mylist4({super.key});

  final List<String> users = const ["Suphakorn", "Chutithep", "Thanachot"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Horizontal List')),
      body: SizedBox(
        height: 110,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: users.length,
          itemBuilder: (context, i) => Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                  child: CircleAvatar(radius: 28, child: Text(users[i][0])),
                ),
                const SizedBox(height: 4),
                Text(users[i], style: const TextStyle(fontSize: 12)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
