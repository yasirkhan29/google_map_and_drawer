import 'package:flutter/material.dart';

// ignore: must_be_immutable
class about_trello_app extends StatelessWidget {
  String name;
  var image;
  void Function()? onTap;

  about_trello_app(
      {super.key,
      required this.image,
      required this.name,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          scale: 25,
        ),
        SizedBox(
          width: 25,
        ),
        InkWell(onTap: onTap, child: Text(name))
      ],
    );
  }
}
