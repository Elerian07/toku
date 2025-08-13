import 'package:flutter/material.dart';
import 'package:toku/components/colors_item.dart';
import 'package:toku/models/colors_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ColorsModel> colors = const [
    ColorsModel(
      image: "assets/images/colors/color_black.png",
      jpName: "Burakku ",
      enName: "black",
      sound: "sounds/colors/black.wav",
    ),

    ColorsModel(
      image: "assets/images/colors/color_brown.png",
      jpName: "Chairo",
      enName: "brown",
      sound: "sounds/colors/brown.wav",
    ),
    ColorsModel(
      image: "assets/images/colors/color_dusty_yellow.png",
      jpName: "Hokori ppoi kiiro",
      enName: "dusty yellow",
      sound: "sounds/colors/dusty yellow.wav",
    ),
    ColorsModel(
      image: "assets/images/colors/color_gray.png",
      jpName: "Gurē",
      enName: "gray",
      sound: "sounds/colors/gray.wav",
    ),
    ColorsModel(
      image: "assets/images/colors/color_green.png",
      jpName: "Midori",
      enName: "green",
      sound: "sounds/colors/green.wav",
    ),
    ColorsModel(
      image: "assets/images/colors/color_red.png",
      jpName: "Aka",
      enName: "red",
      sound: "sounds/colors/red.wav",
    ),

    ColorsModel(
      image: "assets/images/colors/color_white.png",
      jpName: "Shiro",
      enName: "white",
      sound: "sounds/colors/white.wav",
    ),
    ColorsModel(
      image: "assets/images/colors/yellow.png",
      jpName: "Kiiro",
      enName: "yellow",
      sound: "sounds/colors/yellow.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Colors", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff79359F),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, num) {
          return ColorsItem(colors: colors[num]);
        },
      ),
    );
  }
}
