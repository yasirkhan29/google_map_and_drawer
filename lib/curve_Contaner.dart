import 'package:flutter/material.dart';

class curve_Contaner extends StatefulWidget {
  const curve_Contaner({super.key});

  @override
  State<curve_Contaner> createState() => _curve_ContanerState();
}

class _curve_ContanerState extends State<curve_Contaner> {
  late double height;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: height * .5,
            decoration: BoxDecoration(
              color: Colors.purple,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                )
              ],
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Container(
                height: height * .5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
