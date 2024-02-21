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
    return GestureDetector(
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
            child: Image.asset(
                'lib/images/door.png'), // Using Image.asset to load the door image
          ),
        ],
      ),
    );
  }
}
