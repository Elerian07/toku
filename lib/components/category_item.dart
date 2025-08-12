import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category(this.textName, this.colors, this.onTap, {super.key});
  String? textName;
  String? colors;

  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 17),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        color: Color(int.parse(colors!.replaceFirst('#', '0xff'))),
        child: Text(
          textName!,
          style: TextStyle(color: Colors.white, fontSize: 21),
        ),
      ),
    );
  }
}
