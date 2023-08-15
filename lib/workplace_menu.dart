// import 'package:flutter/material.dart';

// class workPlaceMenu extends StatefulWidget {
//   const workPlaceMenu({super.key});

//   @override
//   State<workPlaceMenu> createState() => _workPlaceMenuState();
// }

// class _workPlaceMenuState extends State<workPlaceMenu> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Color.fromARGB(255, 47, 14, 194),
//           leading: Icon(Icons.close),
//           title: Text("Workspace menu"),
//           actions: [
//             Icon(Icons.settings),
//           ],
//         ),
//         body: Column(
//           children: [
//             Container(
//               height: 100,
//               width: double.infinity,
//               decoration: BoxDecoration(color: Colors.white, boxShadow: [
//                 BoxShadow(spreadRadius: 2, blurRadius: 2, color: Colors.black12)
//               ]),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 15, top: 15),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Trello Work",
//                               style: TextStyle(
//                                   color: const Color.fromARGB(255, 84, 12, 97),
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 20),
//                             ),
//                             Row(
//                               children: [
//                                 Text(
//                                   "userworkspace94492244",
//                                   style: TextStyle(
//                                       color: const Color.fromARGB(
//                                           255, 84, 12, 97)),
//                                 ),
//                                 SizedBox(
//                                   width: 5,
//                                 ),
//                                 Text(
//                                   "(Free)",
//                                   style: TextStyle(
//                                       color: const Color.fromARGB(
//                                           255, 84, 12, 97)),
//                                 ),
//                                 SizedBox(
//                                   width: 5,
//                                 ),
//                                 Icon(
//                                   Icons.lock,
//                                   color: Colors.red,
//                                   size: 15,
//                                 ),
//                                 Text(
//                                   "Private",
//                                   style: TextStyle(color: Colors.red),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 40),
//                           child: Image.asset(
//                             "images/tre.png",
//                             scale: 5,
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             ///////////////////////////////////
//             ///   Second Contaner
//             SizedBox(
//               height: 12,
//             ),
//             Container(
//               height: 150,
//               width: double.infinity,
//               decoration: BoxDecoration(color: Colors.white, boxShadow: [
//                 BoxShadow(spreadRadius: 2, blurRadius: 2, color: Colors.black12)
//               ]),
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 12, top: 10),
//                     child: Row(
//                       children: [
//                         Icon(Icons.person),
//                         SizedBox(
//                           width: 5,
//                         ),
//                         Text(
//                           "Members",
//                           style: TextStyle(fontWeight: FontWeight.w400),
//                         )
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 40),
//                     child: Row(
//                       children: [
//                         CircleAvatar(
//                           backgroundImage: AssetImage('images/google.png'),
//                         ),
//                         SizedBox(
//                           width: 5,
//                         ),
//                         CircleAvatar(
//                           backgroundImage: AssetImage('images/google.png'),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   SizedBox(
//                     width: 300,
//                     height: 35,
//                     child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             primary: Color.fromARGB(255, 47, 14, 194)),
//                         onPressed: () {},
//                         child: Text("Invite")),
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class WorkSapceSettings extends StatefulWidget {
  const WorkSapceSettings({super.key});

  @override
  State<WorkSapceSettings> createState() => _WorkSapceSettingsState();
}

class _WorkSapceSettingsState extends State<WorkSapceSettings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 47, 14, 194),
          leading: Icon(Icons.arrow_back),
          title: Text("Workspace settings"),
        ),
        body: Column(
          children: [
            Container(
              height: 110,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(spreadRadius: 2, blurRadius: 2, color: Colors.black12)
              ]),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(
                            color: Color.fromARGB(255, 63, 9, 73),
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          "Trello work",
                          style: TextStyle(
                            color: Color.fromARGB(255, 63, 9, 73),
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Visibility",
                          style: TextStyle(
                            color: Color.fromARGB(255, 63, 9, 73),
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          "Private",
                          style: TextStyle(
                            color: Color.fromARGB(255, 63, 9, 73),
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 90),
              child: Text(
                "Not all settings are editable on mobile.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
