import 'package:flutter/cupertino.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        'its your firts screen',
        style: TextStyle(fontSize: 32.0),
      )),
    );
  }
}
