import 'package:basic/style/my_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';
import 'building_level.dart';

Logger logger = Logger('MainView');

class MainView extends StatefulWidget {
  MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();

  final List<BuildingLevel> levels = <BuildingLevel>[
    const BuildingLevel(),
    const BuildingLevel(),
    const BuildingLevel(),
    const BuildingLevel(),
  ];
}

class _MainViewState extends State<MainView> {
  void addLevel() {
    logger.info('Adding a level');
    setState(() {
      widget.levels.add(const BuildingLevel());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/starv_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('This is the Main View of Energy Starv!'),
                MyButton(
                  onPressed: () => addLevel(),
                  child: Text('Add a level'),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: widget.levels.length,
                    itemBuilder: (context, index) {
                      return BuildingLevel();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => GoRouter.of(context).pop(),
        child: const Text('Back'),
      ),
    );
  }
}
