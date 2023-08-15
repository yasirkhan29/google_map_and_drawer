import 'package:drawer/google_Map/location.dart';
import 'package:flutter/material.dart';

class drewerPage extends StatefulWidget {
  const drewerPage({super.key});

  @override
  State<drewerPage> createState() => _drewerPageState();
}

class _drewerPageState extends State<drewerPage> {
  //Side bar  globle key
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70, left: 5, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      //Side bar  globle key
                      _globalKey.currentState!.openDrawer();
                    },
                    icon: const Icon(Icons.menu, color: Colors.black)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ))
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LocationPage()));
              },
              child: Text("Location..."))
        ],
      ),
      drawer: Container(
        child: Drawer(
          width: 290,
          shape: RoundedRectangleBorder(),
          backgroundColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(left: 2, top: 28),
            child: Column(
              children: [
                Container(
                    height: 200,
                    width: 500,
                    color: Colors.blue[600],
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25, left: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRcLUO1YT9xjfHdUJXTr3b_vl9bd2R0FIbIA&usqp=CAU'),
                            radius: 30,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Muhammad Yasir khan',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '@muhmmadyasirkham10',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'yasirkhan2624@gmail.com',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Colors.grey[200]),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/tre.png',
                          scale: 9,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          'Board',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 15,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150, top: 14),
                  child: Text(
                    'Workspaces',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Drewerslider(
                          title: 'workspace',
                          icon: Icons.people_outline,
                          icons: Icons.more_horiz_rounded,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 10,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: InkWell(
                    onTap: () {},
                    child: const Drewerslider(
                      title: 'My Cards',
                      icon: Icons.card_membership,
                      icons: null,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: const Drewerslider(
                      title: 'offline boads',
                      icon: Icons.border_all_outlined,
                      icons: null,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: InkWell(
                    onTap: () {},
                    child: const Drewerslider(
                      title: 'setting',
                      icon: Icons.settings,
                      icons: null,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: InkWell(
                    onTap: () {},
                    child: const Drewerslider(
                      title: 'Help!',
                      icon: Icons.help_outline_sharp,
                      icons: null,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//side bar class extrat widgt drewer side bare
class Drewerslider extends StatelessWidget {
  final String title;
  final IconData icon;
  final icons;
  const Drewerslider({
    super.key,
    required this.title,
    required this.icon,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.black54,
            size: 28,
          ),
          SizedBox(
            width: 25,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.black87, fontSize: 14),
          ),
          SizedBox(
            width: 100,
          ),
          Icon(
            icons,
            color: Colors.black54,
            size: 25,
          )
        ],
      ),
    );
  }
}
