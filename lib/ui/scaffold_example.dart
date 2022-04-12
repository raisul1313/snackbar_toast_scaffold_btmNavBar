import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../custom/custom_button.dart';

class ScaffoldExample extends StatefulWidget {
  const ScaffoldExample({Key? key}) : super(key: key);

  @override
  State<ScaffoldExample> createState() => _ScaffoldExampleState();
}

class _ScaffoldExampleState extends State<ScaffoldExample> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Fluttertoast.showToast(
          msg: "Tapped Item $index",
          backgroundColor: Colors.white,
          textColor: Colors.black);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade400,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business_sharp,
            ),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school,
            ),
            label: 'School',
          ),
        ],
        onTap: _onItemTapped,
        selectedItemColor: Colors.orange,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
      ),
      appBar: AppBar(
        title: const Text(
          "Scaffold",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade700,
        actions: [
          IconButton(
            color: Colors.black,
            icon: const Icon(Icons.email),
            onPressed: () => Fluttertoast.showToast(
                msg: "Email Button Pressed (Icon Button)",
                backgroundColor: Colors.white,
                textColor: Colors.black),
          ),
          IconButton(
            color: Colors.black,
            icon: const Icon(Icons.access_alarms),
            onPressed: () => Fluttertoast.showToast(
                msg: "Alarm Button Pressed (Icon Button)",
                backgroundColor: Colors.white,
                textColor: Colors.black),
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
              onTap: () => Fluttertoast.showToast(
                  msg: "Tap Me. (Inkwell)",
                  backgroundColor: Colors.white,
                  textColor: Colors.black),
            ),
            SizedBox(
              height: 50.0,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
