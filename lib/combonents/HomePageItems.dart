import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:tunes_player_app/combonents/models.dart';

class homePageItems extends StatelessWidget {
  final tune tuneObj;
  const homePageItems({super.key, required this.tuneObj});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final player = AudioPlayer();
        try {
          await player.play(AssetSource(tuneObj.sound!));
        } catch (e) {
          print("the exceptin is: $e");
        }
      },
      child: Container(
        width: double.infinity,
        color: tuneObj.color!,
      ),
    );
  }
}
