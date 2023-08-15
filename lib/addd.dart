import 'package:flutter/material.dart';

class DynamicTextFieldView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        children: [
          _View1(),
        ],
      ),
    );
  }
}

class _View1 extends StatefulWidget {
  @override
  _View1State createState() => _View1State();
}

class _View1State extends State<_View1> {
  List<TextEditingController> _controllers = [];
  List<TextField> _fields = [];

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mp = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Dynamic Text Field"),
          ),
          body: Column(
            children: [
              ListTile(
                title: const Icon(Icons.add),
                onTap: () {
                  final controller = TextEditingController();
                  final field = TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                    ),
                  );

                  setState(() {
                    _controllers.add(controller);
                    _fields.add(field);
                  });
                },
              ),

              Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 3 / 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                      itemCount: _fields.length,
                      itemBuilder: (BuildContext context, index) {
                        return InkWell(
                          onTap: () {
                            // Get.to(BoardHomeScreen(index: index));
                          },
                          child: Container(
                              // margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                              width: mp.width * 0.5,
                              height: mp.height * 0.3,
                              decoration:
                                  BoxDecoration(border: Border.all(width: 2)),
                              child: Column(children: [
                                TextFormField(
                                    decoration: const InputDecoration(
                                        filled: true, fillColor: Colors.grey))
                              ])),
                        );
                      })),
              // Expanded(
              //     child: Padding(
              //   padding: const EdgeInsets.only(right: 290),
              //   child: Container(
              //     width: 150,
              //     child: ListView.builder(
              //       itemCount: _fields.length,
              //       itemBuilder: (context, index) {
              //         return Container(
              //           margin: const EdgeInsets.all(5),
              //           child: _fields[index],
              //         );
              //       },
              //     ),
              //   ),
              // )),
            ],
          )),
    );
  }
}
