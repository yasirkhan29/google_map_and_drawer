import 'package:flutter/material.dart';

class backGround extends StatefulWidget {
  const backGround({super.key});

  @override
  State<backGround> createState() => _backGroundState();
}

class _backGroundState extends State<backGround> {
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: click == false ? Colors.blue : Colors.brown,
      body: ElevatedButton(
          onPressed: () {
            setState(() {
              click = !click;
            });
          },
          child: Text("change")),
    );
  }
}
