import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:drawer/first_screen.dart';
import 'package:drawer/second_screen.dart';
import 'package:flutter/material.dart';

class MyCustomBottomNavigationBar extends StatefulWidget {
  const MyCustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyCustomBottomNavigationBar> createState() =>
      _MyCustomBottomNavigationBarState();
}

class _MyCustomBottomNavigationBarState
    extends State<MyCustomBottomNavigationBar> {
  int _currentIndex = 0;
  final screens = [
    FirstScreen(),
    SecondScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(
        Icons.home,
        size: 30,
      ),
      const Icon(
        Icons.play_circle,
        size: 30,
      ),
      const Icon(
        Icons.camera,
        size: 30,
      ),
      const Icon(
        Icons.person,
        size: 30,
      ),
    ];
    return Theme(
      data: Theme.of(context).copyWith(
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      child: CurvedNavigationBar(
        color: const Color.fromARGB(247, 84, 74, 158),
        backgroundColor: Colors.white,
        height: 60,
        items: items,
        index: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

          // // Navigate to the corresponding screen
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => screens[_currentIndex]),
          // );
        },
      ),
    );
  }
}
