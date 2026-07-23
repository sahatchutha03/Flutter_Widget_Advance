import 'package:flutter/material.dart';

class Mylist3 extends StatelessWidget {
  const Mylist3({super.key});

  final List<String> todos = const ["HTML", "CSS", "PHP", "REACT", "FLUTTER"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dismissible')),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          final item = todos[index];
          return Dismissible(
            key: ValueKey(item),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            onDismissed: (_) {
              setState(() => todos.removeAt(index));
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('ลบ"$item"')));
            },
            child: ListTile(title: Text(item)),
          );
        },
      ),
    );
  }

  void setState(String Function() param0) {}
}
