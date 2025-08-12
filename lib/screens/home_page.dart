import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_members_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text("Toku", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Category("Numbers", '0xffEF9235', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return NumbersPage();
                },
              ),
            );
          }),
          Category("Family Members", '0xff558B37', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return FamilyMembersPage();
                },
              ),
            );
          }),
          Category("Colors", '0xff79359F', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return ColorsPage();
                },
              ),
            );
          }),
          Category("Phrases", '0xff50ADC7', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return PhrasesPage();
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}
