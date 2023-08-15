import 'package:drawer/resuse_contaner.dart';
import 'package:flutter/material.dart';

class signUpPage extends StatefulWidget {
  const signUpPage({super.key});

  @override
  State<signUpPage> createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  double w = 300;
  double h = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // title of trello app text

            Padding(
              padding: const EdgeInsets.only(left: 140, top: 50),
              child: Row(
                children: [
                  Image.asset(
                    'images/tre.png',
                    scale: 9,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    'Trello',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            // text

            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text('Sign up to continue'),
            ),
            SizedBox(
              height: 12,
            ),

            // textfild

            Container(
              height: h,
              width: w,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your Email',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 10)),
              ),
            ),

            // text of textfild
            Padding(
              padding: EdgeInsets.only(left: 28, top: 10),
              child: Row(
                children: [
                  Text(
                    'By signing up, i accept the Atlassian ',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Cloud Terms of service',
                      style: TextStyle(fontSize: 13, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 28),
              child: Row(
                children: [
                  Text(
                    'and acknowledge the',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'privacy',
                    style: TextStyle(fontSize: 13, color: Colors.blue),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 12,
            ),
            // signup button
            SizedBox(
              height: h,
              width: w,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 17, 6, 170)),
                  child: Text(
                    'Sign up',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  )),
            ),

            SizedBox(
              height: 15,
            ),
            // or text
            Text(
              'OR',
              style: TextStyle(color: Colors.grey, fontSize: 11),
            ),
            SizedBox(
              height: 15,
            ),
            // contaner gamil, microfot, apple, slack
            reuse(
              name: 'Continu with Google',
              image: 'images/google.png',
              onTap: () {},
            ),
            SizedBox(
              height: 15,
            ),
            reuse(
                name: 'Continu with Microsoft',
                image: 'images/micro.png',
                onTap: () {}),
            SizedBox(
              height: 15,
            ),
            reuse(
                name: 'Continu with Aplle',
                image: 'images/apple.png',
                onTap: () {}),
            SizedBox(
              height: 15,
            ),
            reuse(
                name: 'Continu with Slack',
                image: 'images/slack.png',
                onTap: () {}),
            SizedBox(
              height: 15,
            ), // divider
            Divider(
              indent: 31,
              endIndent: 31,
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 9,
            ),
            // text
            Padding(
              padding: EdgeInsets.only(
                left: 80,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'images/atl.png',
                    scale: 2,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    'ATLASSIAN',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 18,
            ),
            // text navigator
            Text('This page is protected by reCAPTCHA and the Google',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                )),
            InkWell(
              onTap: () {},
              child: Text('privacy policy and Terms of Service apply',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 13,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
