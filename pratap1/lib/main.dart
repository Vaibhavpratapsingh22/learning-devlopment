import 'dart:convert';

import 'package:flutter/material.dart';

void main() => runApp(VaibApp());

class VaibApp extends StatefulWidget {
  VaibApp({Key? key}) : super(key: key);

  @override
  State<VaibApp> createState() => _VaibAppState();
}

class _VaibAppState extends State<VaibApp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
          title: const Center(
            child: Text(
              "FirstApp",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          elevation: 4.0,
        ),
        body: currentIndex == 0 ? buildContent() : secondPage(),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color.fromARGB(255, 228, 12, 41),
          items: const [
            BottomNavigationBarItem(
              label: 'home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'settings',
              icon: Icon(Icons.settings),
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }

  Container buildContent() {
    return Container(
      color: Colors.grey[300],
      padding: EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Sign In",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontFamily: "poppins",
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10.0),
          SizedBox(
            height: 50.0,
            child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)))),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 242, 242, 242)),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'images/googlelogo.png',
                      width: 30,
                      height: 30,
                    ),
                    const Text(
                      "Sign In with Google",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Opacity(
                        opacity: 0.0,
                        child: Image.asset('images/googlelogo.png')),
                  ],
                )),
          ),
          const SizedBox(height: 10.0),
          SizedBox(
            height: 50.0,
            child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF334D92)),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'images/fb_logo.png',
                      width: 30,
                      height: 30,
                    ),
                    const Text(
                      "Sign In with Facebook",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Opacity(
                        opacity: 0.0, child: Image.asset('images/fb_logo.png')),
                  ],
                )),
          ),
          const SizedBox(height: 10.0),
          SizedBox(
            height: 50.0,
            child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'images/github_logo.png',
                      width: 30,
                      height: 30,
                    ),
                    const Text(
                      "Sign In with Github",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Opacity(
                        opacity: 0.0,
                        child: Image.asset('images/github_logo.png')),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  Container secondPage() {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.grey[300],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Settings",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          CircleAvatar(
            child: Image.asset('images/vaibhav_profile.png'),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Username:",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Text(
                "Vaibhav Singh",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(padding: EdgeInsets.only(left: 5.0)),
              Text(
                "Email ID:",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Text(
                "vaibhav@gamil.com",
                // textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
            height: 30.0,
            indent: 10.0,
            thickness: 2.0,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const ListTile(
            leading: Icon(Icons.home),
            title: Text(
              "Profile Setting",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400),
            ),
            trailing: Icon(Icons.navigate_next),
          ),
        ],
      ),
    );
  }
}
