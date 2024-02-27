import 'package:basic/starv_components/window.dart';
import 'package:flutter/material.dart';

class BuildingLevel extends StatefulWidget {
  BuildingLevel({super.key, required lightsOn, required lightSwitch});

  bool lightsOn = false;
  bool lightSwitch() {
    lightsOn = !lightsOn;
    return lightsOn;
  }

  @override
  State<BuildingLevel> createState() => _BuildingLevelState();
}

class _BuildingLevelState extends State<BuildingLevel> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 220,
            height: 80,
            color: Colors.blueGrey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Window(
                  lightsOn: widget.lightsOn,
                  lightSwitch: widget.lightSwitch(),
                ),
                SizedBox(width: 10),
                Window(
                  lightsOn: widget.lightsOn,
                  lightSwitch: widget.lightSwitch(),
                ),
                SizedBox(width: 10),
                Window(
                  lightsOn: widget.lightsOn,
                  lightSwitch: widget.lightSwitch(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
