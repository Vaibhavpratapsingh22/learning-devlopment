import 'package:flutter/material.dart';

void main() => runApp(VaibApp());

class VaibApp extends StatelessWidget {
  const VaibApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
          title: const Text(
            "PRATAP",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          elevation: 4.0,
        ),
        body: buildContent(),
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
            ]),
      ),
    );
  }

  Container buildContent() {
    return Container(
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
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.brown),
              ),
              onPressed: () {},
              child: const Text(
                "Sign In with Google",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 20,
                ),
              )),
        ],
      ),
    );
  }
}
