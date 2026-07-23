import 'package:flutter/material.dart';

class Mylist5 extends StatelessWidget {
  const Mylist5({super.key});

  final List<Map<String, String>> faqs = const [
    {
      "q":
          'ListView.builder และ GridView.builder มีการแสดงผลที่แตกต่างกันอย่างไร และควรเลือกใช้อย่างไรให้เหมาะสม?',
      "a":
          "ListView.builder ใช้สำหรับแสดงผลข้อมูลแบบเรียงต่อกันเป็นเส้นตรง (แถวเดียว) เลื่อนขึ้นลงหรือซ้ายขวา เหมาะกับรายการยาวๆ เช่น รายการแชท หรือตารางนัดหมาย"
          "GridView.builder ใช้สำหรับแสดงผลข้อมูลแบบตารางที่แบ่งเป็นหลายคอลัมน์ได้ เหมาะกับการแสดงแกลเลอรีรูปภาพ หรือการ์ดเมนูอาหาร (เหมือนที่จัดเป็น 2 คอลัมน์)",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ExpansionTile')),
      body: ListView(
        children: faqs.map((f) {
          return Card(
            child: ExpansionTile(
              leading: const Icon(Icons.help_outline),
              title: Text(
                f['q']!,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              children: [
                Padding(
                  padding: const EdgeInsetsGeometry.fromLTRB(16, 0, 16, 16),
                  child: Align(
                    alignment: AlignmentGeometry.centerLeft,
                    child: Text(f['a']!),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
