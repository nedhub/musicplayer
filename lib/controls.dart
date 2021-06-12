import 'package:flutter/material.dart';
import 'package:musicappui/colors.dart';

class PlayerControls extends StatelessWidget {
  const PlayerControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Controls(
          icon: Icons.repeat_on_rounded,
        ),
        Controls(icon: Icons.skip_previous_rounded),
        PlayControl(),
        Controls(icon: Icons.skip_next_rounded),
        Controls(icon: Icons.shuffle_on_rounded),
      ],
    ));
  }
}

class PlayControl extends StatelessWidget {
  const PlayControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: primaryColor,
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: darkPrimaryColor.withOpacity(0.5),
              offset: Offset(5, 10),
              spreadRadius: 3,
              blurRadius: 10,
            ),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-3, -4),
                spreadRadius: -2,
                blurRadius: 20)
          ],
        ),
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                        color: darkPrimaryColor.withOpacity(0.5),
                        offset: Offset(5, 10),
                        spreadRadius: 3,
                        blurRadius: 10,
                      ),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(-3, -4),
                          spreadRadius: -2,
                          blurRadius: 20)
                    ],
                  ),
                  child: Center(
                      child: Icon(
                    Icons.play_arrow,
                    size: 50,
                    color: darkPrimaryColor,
                  ))),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: primaryColor, shape: BoxShape.rectangle),
                child: Center(child: Icon(Icons.play_arrow_rounded, size: 50)),
              ),
            )
          ],
        ));
  }
}

class Controls extends StatelessWidget {
  // const Controls({Key? key}) : super(key: key);

  final IconData icon;

  const Controls({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: primaryColor,
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: darkPrimaryColor.withOpacity(0.5),
            offset: Offset(5, 10),
            spreadRadius: 3,
            blurRadius: 10,
          ),
          BoxShadow(
              color: Colors.white,
              offset: Offset(-3, -4),
              spreadRadius: -2,
              blurRadius: 20)
        ],
      ),
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: darkPrimaryColor, shape: BoxShape.rectangle),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(color: primaryColor, shape: BoxShape.rectangle),
              child: Center(child: Icon(icon)),
            ),
          )
        ],
      ),
    );
  }
}
