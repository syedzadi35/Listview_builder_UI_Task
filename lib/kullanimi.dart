import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class Task1 extends StatelessWidget {
  Task1({super.key});
  List<int> name = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          'Listview Kullanimi',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: name.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 12, bottom: 12),
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color:
                              index % 2 == 0 ? Colors.tealAccent : Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text('ogrenci adi 80\norgreci soyad 80')
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
