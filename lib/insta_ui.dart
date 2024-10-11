// import 'dart:js_interop';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Task2 extends StatelessWidget {
  Task2({super.key});
  List<String> image = [
    'assets/girls.jpg',
    'assets/dress 2.png',
    'assets/girls.jpg',
    'assets/dress 1.png',
    'assets/girls.jpg',
    'assets/dress 4.png',
    'assets/dress 2.png',
    'assets/girls.jpg',
    'assets/winter 4.png',
    'assets/dress 4.png',
    'assets/girls.jpg',
    'assets/winter 2.png',
    'assets/winter 1.png',
    'assets/dress 4.png',
    'assets/girls.jpg',
    'assets/dress 2.png',
    'assets/girls.jpg',
    'assets/winter 3.png',
  ];
  List<String> name = [
    'your_story',
    'Munaza',
    'Rida',
    'asma',
    'suhail',
    'rashi_shah',
    'Naila',
    'syeda',
    'sawaira',
    'shameen',
    'saadat',
    'shahab',
    'Naila',
    'syeda',
    'sawaira',
    'shameen',
    'saadat',
    'shahab',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.send_sharp),
          )
        ],
        leading: const Icon(Icons.camera_alt_sharp),
        title: const Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text(
            'Instagram',
            style: TextStyle(
                fontFamily: 'vegan',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 45, 4, 46)),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Stories'),
                  Row(
                    children: [
                      Icon(Icons.play_arrow),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Watch all'),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: SizedBox(
                    height: 100,
                    width: 300,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: image.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    height: 0,
                                  ),
                                  CircleAvatar(
                                    backgroundImage: AssetImage(image[index]),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(name[index]),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Container(
                          height: 5,
                          color: Colors.black,
                        );
                      },
                    ),
                  ))
                ],
              ),
              const Divider(),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/dress 2.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'Syeda Sawaira Shameen',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 350,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/girls.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.favorite_border_outlined),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.send_sharp),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.comment_rounded),
                      //   SizedBox(
                      //     width: 220,
                      //   ),
                      //   Icon(Icons.messenger_outline_sharp),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text('2875 Likes\nSidra Liaqat '),
                      Divider(),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.home),
                      Icon(Icons.search),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.new_label),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.video_camera_back),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.person),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
