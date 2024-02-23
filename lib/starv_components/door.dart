import 'package:flutter/material.dart';

class Door extends StatefulWidget {
  const Door({super.key});

  @override
  State<Door> createState() => _DoorState();
}

class _DoorState extends State<Door> {
  double opacityLevel = 1.0;
  bool lightsOn = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter, // Align at the bottom center
      child: SizedBox(
        width: 220.0,
        child: GestureDetector(
          onTap: () {
            setState(() {
              opacityLevel =
                  opacityLevel == 1.0 ? 0.0 : 1.0; // Toggle opacity level
            });
          },
          child: Column(
            children: <Widget>[
              AnimatedOpacity(
                opacity: opacityLevel,
                duration: Duration(seconds: 3),
                child: Container(
                  width: 220,
                  height: 200,
                  color: Colors.blueGrey,
                  child: Image.asset(
                    'lib/images/door.png',
                    alignment: Alignment.bottomCenter,
                  ), // Using Image.asset to load the door image
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
