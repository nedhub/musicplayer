import 'package:flutter/material.dart';
import 'package:musicappui/colors.dart';

class AlbumArt extends StatelessWidget {
  const AlbumArt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 260,
        width: 260,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('images/life.jpeg')),
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: darkPrimaryColor.withOpacity(0.5),
                offset: Offset(7, 10),
                spreadRadius: 3,
                blurRadius: 10,
              ),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-3, -4),
                  spreadRadius: -2,
                  blurRadius: 20)
            ]));
  }
}
