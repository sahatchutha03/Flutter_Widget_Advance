import 'package:flutter/material.dart';

class Homedart extends StatelessWidget {
  const Homedart({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> menus = [
      {'name': 'Mylist1', 'route': '/Mylist1'},
      {'name': 'Mylist2', 'route': '/Mylist2'},
      {'name': 'Mylist3', 'route': '/Mylist3'},
      {'name': 'Mylist4', 'route': '/Mylist4'},
      {'name': 'Mylist5', 'route': '/Mylist5'},
    ];

    return Scaffold(
      body: Center(
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: List.generate(menus.length, (index) {
            return ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, menus[index]['route']!);
              },
              child: Text(menus[index]['name']!),
            );
          }),
        ),
      ),
    );
  }
}
