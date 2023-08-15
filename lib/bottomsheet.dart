import 'package:flutter/material.dart';

class bottom_Sheet extends StatelessWidget {
  final image;
  final String text3;
  final String text4;
  void Function()? onPressed;
  bottom_Sheet(
      {super.key,
      required this.image,
      required this.text3,
      required this.text4,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                image,
                scale: 15,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text3,
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    text4,
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
              width: 50,
              child: ElevatedButton(
                  onPressed: onPressed,
                  child: Text(
                    "GET",
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 11, 22, 179),
                    ),
                  ))),
        ],
      ),
    );
  }
}
