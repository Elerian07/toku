import 'package:flutter/material.dart';
import 'package:toku/models/phrases_model.dart';
import 'package:audioplayers/audioplayers.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.phrases});
  final PhrasesModel phrases;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xff50ADC7),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 1),
            child: Container(
              color: Color(0xff50ADC7),
              child: Text(
                phrases.enPhrase,
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  phrases.jpPhrase,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: EdgeInsets.only(right: 14),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(phrases.sound));
              },
              icon: Icon(Icons.play_arrow, color: Colors.white, size: 28),
            ),
          ),
        ],
      ),
    );
  }
}
