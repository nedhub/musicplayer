import 'package:flutter/material.dart';
import 'package:musicappui/colors.dart';

class NavigationBar extends StatelessWidget {
  // const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        margin: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.bottomCenter,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              NavBarItem(icon: Icons.arrow_back_ios_new_rounded),
              Text('on repeat',
                  style: TextStyle(
                      fontSize: 16,
                      color: darkPrimaryColor,
                      fontWeight: FontWeight.w500)),
              NavBarItem(
                icon: Icons.music_note_rounded,
              )
            ]));
  }
}

class NavBarItem extends StatelessWidget {
  final IconData icon;

  const NavBarItem({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 40,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: darkPrimaryColor.withOpacity(0.5),
          offset: Offset(7, 10),
          spreadRadius: 2,
          blurRadius: 5,
        ),
        BoxShadow(
            color: Colors.white,
            offset: Offset(-3, -4),
            spreadRadius: -2,
            blurRadius: 20)
      ], color: primaryColor, borderRadius: BorderRadius.circular(10)),
      child: Icon(icon, color: darkPrimaryColor),
    );
  }
}
