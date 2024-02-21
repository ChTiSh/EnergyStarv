import 'package:basic/starv_components/window.dart';
import 'package:flutter/material.dart';

class BuildingLevel extends StatefulWidget {
  const BuildingLevel({super.key});

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
                Window(),
                SizedBox(width: 10),
                Window(),
                SizedBox(width: 10),
                Window(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
