import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({Key? key}) : super(key: key);

  _buttonPressed() {
    debugPrint("Alarm button pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade400,
      appBar: AppBar(
        title: const Text(
          "Scaffold",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade700,
        actions: [
          IconButton(
            onPressed: () => debugPrint("Email Icon Pressed"),
            color: Colors.black,
            icon: const Icon(Icons.email),
          ),
          IconButton(
            onPressed: _buttonPressed,
            color: Colors.black,
            icon: const Icon(Icons.access_alarms),
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: const Text(
                "Tap Me.",
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                ),
              ),
              onTap: () => debugPrint("Tapped..."),
            )
          ],
        ),
      ),
    );
  }
}
