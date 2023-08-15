import 'package:drawer/first_screen.dart';
import 'package:drawer/second_screen.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Trello App'),
          bottom: TabBar(
            tabs: [
              Text('Home Page'),
              Text('land page'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FirstScreen(),
            SecondScreen(),
          ],
        ),
      ),
    );
  }
}
