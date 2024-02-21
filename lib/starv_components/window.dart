import 'package:flutter/material.dart';

class Window extends StatefulWidget {
  Window({super.key});

  @override
  State<Window> createState() => _WindowState();

  bool lightsOn = false;
}

class _WindowState extends State<Window> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => widget.lightsOn = !widget.lightsOn),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 50,
          height: 50,
          color: widget.lightsOn ? Colors.yellow[100] : Colors.grey[800],
        ),
      ),
    );
  }
}
