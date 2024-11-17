import 'package:flutter/material.dart';
import 'package:tunes_player_app/combonents/HomePageItems.dart';
import 'package:tunes_player_app/combonents/models.dart';

class Tunes_player extends StatelessWidget {
  final List<tune> tunesList = const [
    tune(
      color: Colors.red,
      sound: 'sounds/note1.wav',
    ),
    tune(
      color: Colors.orange,
      sound: 'sounds/note2.wav',
    ),
    tune(
      color: Colors.yellow,
      sound: 'sounds/note3.wav',
    ),
    tune(
      color: Colors.green,
      sound: 'sounds/note4.wav',
    ),
    tune(
      color: Colors.greenAccent,
      sound: 'sounds/note5.wav',
    ),
    tune(
      color: Colors.blue,
      sound: 'sounds/note6.wav',
    ),
    tune(
      color: Colors.purple,
      sound: 'sounds/note7.wav',
    ),
  ];

  const Tunes_player({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 100,
          backgroundColor: const Color(0xff243139),
          title: const Center(
            child: Text(
              "Tunes Player",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          )),
      body: Column(
        children: [
          Expanded(
            child: homePageItems(tuneObj: tunesList[0]),
          ),
          Expanded(
            child: homePageItems(tuneObj: tunesList[1]),
          ),
          Expanded(
            child: homePageItems(tuneObj: tunesList[2]),
          ),
          Expanded(
            child: homePageItems(tuneObj: tunesList[3]),
          ),
          Expanded(
            child: homePageItems(tuneObj: tunesList[4]),
          ),
          Expanded(
            child: homePageItems(tuneObj: tunesList[5]),
          ),
          Expanded(
            child: homePageItems(tuneObj: tunesList[6]),
          ),
        ],
      ),
    );
  }

  /* List<Widget> getTune() {
    List<Widget> items = [];
    for (var tune in tunesList) {
      items.add(homePageItems(tuneObj: tune));
    }
    return items;
  }
  */
}
