// ignore_for_file: unused_field

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _textController = TextEditingController();
  String _selectedOption = 'All Type';
  bool is_check = false;
  bool is_me = false;
  bool is_com = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                _bottomsheet();
              },
              child: Container(
                height: 40,
                width: 100,
                child: Center(child: Text(_selectedOption)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _bottomsheet() {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Checkbox(
                    value: is_check,
                    onChanged: (value) {
                      setState(() {
                        is_check = value!;
                      });
                    }),
                title: new Text('All type'),
                onTap: () {
                  setState(() {
                    _selectedOption = "All type";
                    is_check = true;
                    is_me = false;
                    is_com = false;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Checkbox(
                    value: is_me,
                    onChanged: (value) {
                      setState(() {
                        is_com = value as bool;
                      });
                    }),
                title: new Text('Me'),
                onTap: () {
                  setState(() {
                    _selectedOption = "Me";
                    is_me = true;
                    is_check = false;
                    is_com = false;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Checkbox(
                    value: is_com,
                    onChanged: (value) {
                      setState(() {
                        is_com = value as bool;
                      });
                    }),
                title: new Text('Comment'),
                onTap: () {
                  setState(() {
                    _selectedOption = "Comment";
                    is_com = true;
                    is_check = false;
                    is_me = false;
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }
}













/*
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class notification extends StatefulWidget {
//   const notification({super.key});

//   @override
//   State<notification> createState() => _notificationState();
// }

// class _notificationState extends State<notification> {
//   // bool is_check = false;
//   // bool is_me = false;
//   // bool is_comments = false;
//   // bool is_re = false;
//   List<Map> categories = [
//     {"name": "All type", "isChecked": false},
//     {"name": "Me", "isChecked": false},
//     {"name": "Comments", "isChecked": false},
//     {"name": "Join requests", "isChecked": false},
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           leading: Icon(Icons.close),
//           title: Text("Notifications"),
//           actions: <Widget>[
//             IconButton(
//               icon: const Icon(Icons.check),
//               onPressed: () {},
//             ), //IconButton
//             PopupMenuButton(
//                 itemBuilder: (context) => [
//                       PopupMenuItem(
//                           child: Row(
//                         children: [
//                           Icon(
//                             Icons.more_vert_outlined,
//                           ),
//                           Text("Push notification settings")
//                         ],
//                       ))
//                     ]) //IconButton
//           ], //<Wid
//         ),

//         ////////////////////////

//         body: Column(
//           children: [
//             Container(
//               height: 50,
//               width: double.infinity,
//               decoration: BoxDecoration(color: Colors.white, boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.5),
//                   spreadRadius: 1.3,
//                   blurRadius: 1,
//                 )
//               ]),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10),
//                 child: Row(
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         botomsheet(context);
//                       },
//                       child: Container(
//                         height: 29,
//                         width: 120,
//                         decoration: BoxDecoration(
//                           borderRadius:
//                               BorderRadius.all(Radius.elliptical(11, 11)),
//                           border: Border.all(
//                             width: 0.1,
//                           ),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 15),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Wrap(
//                                 children: categories.map((favorite) {
//                                   if (favorite['isChecked'] == true) {
//                                     return Container(
//                                       child: Row(
//                                         children: [
//                                           Text(
//                                             favorite['name'],
//                                           ),
//                                         ],
//                                       ),
//                                     );
//                                   }
//                                   return Container();
//                                 }).toList(),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 15,
//                     ),
//                     Container(
//                       height: 29,
//                       width: 70,
//                       decoration: BoxDecoration(
//                         borderRadius:
//                             BorderRadius.all(Radius.elliptical(11, 11)),
//                         border: Border.all(
//                           width: 0.1,
//                         ),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 15, top: 4),
//                         child: Text(
//                           "Unread",
//                           style: TextStyle(
//                               color: Color.fromARGB(255, 87, 61, 133)),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             //////////
//           ],
//         ),
//       ),
//     );
//   }

//   void botomsheet(BuildContext context) {
//     showModalBottomSheet(
//         context: context,
//         builder: (context) => Container(
//               child: Column(
//                   children: categories.map((favorite) {
//                 return CheckboxListTile(
//                     side: BorderSide(
//                       color: Colors.white, //your desire colour here
//                       width: 1.5,
//                     ),
//                     controlAffinity: ListTileControlAffinity.leading,
//                     checkColor: Colors.black,
//                     activeColor: Colors.white,
//                     title: Text(favorite['name'],
//                         style: TextStyle(
//                             fontSize: 13,
//                             color: Color.fromARGB(255, 87, 61, 133))),
//                     value: favorite['isChecked'],
//                     onChanged: (vale) {
//                       setState(() {
//                         favorite['isChecked'] = vale;

//                         Get.back();
//                       });
//                     });
//               }).toList()),
//             ));
//   }
// }



          // Container(
          //       color: Colors.white,
          //       child: Padding(
          //         padding: const EdgeInsets.only(left: 40, top: 15),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             CheckboxListTile(
          //                 side: BorderSide(
          //                   color: Colors.white, //your desire colour here
          //                   width: 1.5,
          //                 ),
          //                 controlAffinity: ListTileControlAffinity.leading,
          //                 checkColor: Colors.black,
          //                 title: Text(
          //                   "All types",
          //                   style: TextStyle(
          //                       fontSize: 13,
          //                       color: Color.fromARGB(255, 87, 61, 133)),
          //                 ),
          //                 value: is_check,
          //                 activeColor: Colors.white,
          //                 onChanged: (val) {
          //                   setState(() {
          //                     is_check = val!;
          //                     Get.back();
          //                   });
          //                 }),
          //             SizedBox(
          //               height: 25,
          //             ),
          //             CheckboxListTile(
          //                 side: BorderSide(
          //                   color: Colors.white, //your desire colour here
          //                   width: 1.5,
          //                 ),
          //                 controlAffinity: ListTileControlAffinity.leading,
          //                 checkColor: Colors.black,
          //                 title: Text(
          //                   "Me",
          //                   style: TextStyle(
          //                       fontSize: 13,
          //                       color: Color.fromARGB(255, 87, 61, 133)),
          //                 ),
          //                 value: is_me,
          //                 activeColor: Colors.white,
          //                 onChanged: (me) {
          //                   setState(() {
          //                     is_me = me!;
          //                     Get.back();
          //                   });
          //                 }),
          //             SizedBox(
          //               height: 25,
          //             ),
          //             CheckboxListTile(
          //                 side: BorderSide(
          //                   color: Colors.white, //your desire colour here
          //                   width: 1.5,
          //                 ),
          //                 controlAffinity: ListTileControlAffinity.leading,
          //                 checkColor: Colors.black,
          //                 title: Text(
          //                   "Comments",
          //                   style: TextStyle(
          //                       fontSize: 13,
          //                       color: Color.fromARGB(255, 87, 61, 133)),
          //                 ),
          //                 value: is_comments,
          //                 activeColor: Colors.white,
          //                 onChanged: (co) {
          //                   setState(() {
          //                     is_comments = co!;
          //                     Get.back();
          //                   });
          //                 }),
          //             SizedBox(
          //               height: 25,
          //             ),
          //             CheckboxListTile(
          //                 side: BorderSide(
          //                   color: Colors.white, //your desire colour here
          //                   width: 1.5,
          //                 ),
          //                 controlAffinity: ListTileControlAffinity.leading,
          //                 checkColor: Colors.black,
          //                 title: Text(
          //                   style: TextStyle(
          //                       fontSize: 13,
          //                       color: Color.fromARGB(255, 87, 61, 133)),
          //                   "Join request",
          //                 ),
          //                 value: is_re,
          //                 activeColor: Colors.white,
          //                 onChanged: (re) {
          //                   setState(() {
          //                     is_re = re!;
          //                     Get.back();
          //                   });
          //                 }),
          //           ],
          //         ),
          //       ),
          //     )
 
 */







// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final TextEditingController _textController = TextEditingController();
//   String _selectedOption = '';

//   void _showBottomSheet() {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return Container(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               _buildOption('All type'),
//               _buildOption('Me'),
//               _buildOption('Comments'),
//               _buildOption('Join'),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildOption(String option) {
//     return ListTile(
//       title: Text(option),
//       onTap: () {
//         setState(() {
//           _selectedOption = option;
//           _textController.text = option;
//         });
//         Navigator.of(context).pop();
//       },
//     );
//   }

//   @override
//   void dispose() {
//     _textController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Bottom Sheet Demo'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Container(
//               width: 132,
//               height: 44,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(50),
//                   border: Border.all()),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 15, bottom: 5),
//                 child: TextField(
//                   controller: _textController,
//                   onTap: _showBottomSheet,
//                   decoration: InputDecoration(
//                     hintText: "All Type",
//                     border: InputBorder.none,
//                     suffixIcon: Icon(Icons.arrow_drop_down),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
