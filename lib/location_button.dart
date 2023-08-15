import 'package:drawer/google_Map/location.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:http/http.dart';

class locationButton extends StatefulWidget {
  const locationButton({super.key});

  @override
  State<locationButton> createState() => _locationButtonState();
}

class _locationButtonState extends State<locationButton> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Get.to(LocationPage());
              },
              child: Text("location")),
        ),
      ),
    );
  }
}
