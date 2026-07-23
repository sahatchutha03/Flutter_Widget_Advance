import 'package:flutter/material.dart';

class Mylist2 extends StatelessWidget {
  const Mylist2({super.key});

  final List<Map<String, String>> products = const [
    {"name": "Headphone", "price": "590"},
    {"name": "Perfurm", "price": "599"},
    {"name": "Lipstick", "price": "990"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grid with Price')),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, i) {
          final p = products[i];
          return Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.deepPurpleAccent,
                    child: const Icon(Icons.image, size: 48),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    p['name']!,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, bottom: 8),
                  child: Text(
                    '₿${p['price']}',
                    style: const TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
