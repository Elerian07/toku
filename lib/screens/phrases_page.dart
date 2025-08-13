import 'package:flutter/material.dart';
import 'package:toku/components/phrases_item.dart';
import 'package:toku/models/phrases_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<PhrasesModel> phrases = const [
    PhrasesModel(
      jpPhrase: "Kimasu ka?",
      enPhrase: "are you coming?",
      sound: "sounds/phrases/are_you_coming.wav",
    ),
    PhrasesModel(
      jpPhrase: "Kōdoku suru koto \no wasurenaide kudasai",
      enPhrase: "dont forget to subscribe",
      sound: "sounds/phrases/dont_forget_to_subscribe.wav",
    ),
    PhrasesModel(
      jpPhrase: "Go kibun wa ikagadesu ka?",
      enPhrase: "how are you feeling?",
      sound: "sounds/phrases/how_are_you_feeling.wav",
    ),

    PhrasesModel(
      jpPhrase: "Watashi wa anime ga daisukidesu",
      enPhrase: "i love anime",
      sound: "sounds/phrases/i_love_anime.wav",
    ),
    PhrasesModel(
      jpPhrase: "Watashi wa puroguramingu \nga daisukidesu",
      enPhrase: "i love programming",
      sound: "sounds/phrases/i_love_programming.wav",
    ),
    PhrasesModel(
      jpPhrase: "Puroguramingu wa kantandesu",
      enPhrase: "programming is easy",
      sound: "sounds/phrases/programming_is_easy.wav",
    ),
    PhrasesModel(
      jpPhrase: " namae wa nanidesu ka?",
      enPhrase: "what is your name?",
      sound: "sounds/phrases/what_is_your_name.wav",
    ),
    PhrasesModel(
      jpPhrase: "Doko ni iku no?",
      enPhrase: "where are you going?",
      sound: "sounds/phrases/where_are_you_going.wav",
    ),

    PhrasesModel(
      jpPhrase: "Hai watashi \nwa kite imasu",
      enPhrase: "yes im coming",
      sound: "sounds/phrases/yes_im_coming.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phrases", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff50ADC7),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, num) {
          return PhrasesItem(phrases: phrases[num]);
        },
      ),
    );
  }
}
