import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Task4 extends StatefulWidget {
  Task4({super.key});
  List<String> images = [
    'assets/biryani.jpeg',
    'assets/butter_nan.jpeg',
    'assets/gulab_jamun.jpeg',
    'assets/jeera_rice.jpeg',
    'assets/palak_paneer.jpeg',
    'assets/chicken_karahi.jpeg',
    'assets/kabab.jpeg',
    'assets/MUTTON_ROSH.jpeg',
    'assets/BBQ.jpeg'
  ];
  List<String> names = [
    'BIRYANI',
    'BUTTER NAAN',
    'GULAB JAMUN',
    'JEERA RICE',
    'PALAK PANEER',
    'CHICKEN KARAHI',
    'KABAB',
    'MUTTON ROSH',
    'BBQ CHAMP'
  ];
  @override
  State<Task4> createState() => _List_ViewState();
}

class _List_ViewState extends State<Task4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Recipies',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
        ),
        backgroundColor: const Color.fromARGB(255, 238, 117, 163),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: widget.names.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        color: const Color.fromARGB(255, 200, 240, 233),
                        // child: Text(widget.names[index]),
                        child: Row(children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Task4()),
                              );
                            },
                            child: Image.asset(
                              widget.images[index],
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Text(
                            widget.names[index],
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
