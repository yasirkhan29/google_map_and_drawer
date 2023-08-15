import 'package:flutter/material.dart';

class whatsup extends StatefulWidget {
  const whatsup({super.key});

  @override
  State<whatsup> createState() => _whatsupState();
}

class _whatsupState extends State<whatsup> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.people_alt_rounded, color: Colors.white),
            ),
            Tab(
              text: ("Chats"),
            ),
            Tab(
              text: ("Status"),
            ),
            Tab(
              text: ("Calls"),
            ),
          ]),
          elevation: 0,
          title: Text("Whatsapp"),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/google.png'),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Qasir "),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Loading....."),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: Text(
                      "6.21PM",
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
