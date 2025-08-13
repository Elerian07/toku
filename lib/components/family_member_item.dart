import 'package:flutter/material.dart';
import 'package:toku/models/family_model.dart';
import 'package:audioplayers/audioplayers.dart';

class FamilyItem extends StatelessWidget {
  const FamilyItem({super.key, required this.family});
  final Family family;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xff558B37),
      child: Row(
        children: [
          Container(color: Color(0xffFFF6DC), child: Image.asset(family.image)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  family.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  family.enName,
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
                player.play(AssetSource(family.sound));
              },
              icon: Icon(Icons.play_arrow, color: Colors.white, size: 28),
            ),
          ),
        ],
      ),
    );
  }
}
