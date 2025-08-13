import 'package:flutter/material.dart';
import 'package:toku/components/family_member_item.dart';
import 'package:toku/models/family_model.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<Family> family = const [
    Family(
      image: "assets/images/family_members/family_father.png",
      jpName: "chichi",
      enName: "Father",
      sound: "sounds/family_members/father.wav",
    ),
    Family(
      image: "assets/images/family_members/family_mother.png",
      jpName: "haha",
      enName: "mother",
      sound: "sounds/family_members/mother.wav",
    ),
    Family(
      image: "assets/images/family_members/family_grandfather.png",
      jpName: "ojīsan",
      enName: "grand father",
      sound: "sounds/family_members/grand father.wav",
    ),

    Family(
      image: "assets/images/family_members/family_grandmother.png",
      jpName: "sobo",
      enName: "garnd mother",
      sound: "sounds/family_members/grand mother.wav",
    ),
    Family(
      image: "assets/images/family_members/family_son.png",
      jpName: "musuko",
      enName: "son",
      sound: "sounds/family_members/son.wav",
    ),
    Family(
      image: "assets/images/family_members/family_daughter.png",
      jpName: "musume",
      enName: "daughter",
      sound: "sounds/family_members/daughter.wav",
    ),
    Family(
      image: "assets/images/family_members/family_older_brother.png",
      jpName: "onīsan",
      enName: "older brother",
      sound: "sounds/family_members/older bother.wav",
    ),
    Family(
      image: "assets/images/family_members/family_older_sister.png",
      jpName: "ane",
      enName: "older sister",
      sound: "sounds/family_members/older sister.wav",
    ),

    Family(
      image: "assets/images/family_members/family_younger_brother.png",
      jpName: "otōto",
      enName: "younger brother",
      sound: "sounds/family_members/younger brohter.wav",
    ),
    Family(
      image: "assets/images/family_members/family_younger_sister.png",
      jpName: "imōto",
      enName: "younger sister",
      sound: "sounds/family_members/younger sister.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Family Members", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff558B37),
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, num) {
          return FamilyItem(family: family[num]);
        },
      ),
    );
  }
}
