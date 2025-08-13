import 'package:flutter/material.dart';
import 'package:toku/models/colors_model.dart';
import 'package:audioplayers/audioplayers.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key, required this.colors});
  final ColorsModel colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xff79359F),
      child: Row(
        children: [
          Container(color: Color(0xffFFF6DC), child: Image.asset(colors.image)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  colors.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  colors.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(colors.sound));
              },
              icon: Icon(Icons.play_arrow, color: Colors.white, size: 28),
            ),
          ),
        ],
      ),
    );
  }
}
