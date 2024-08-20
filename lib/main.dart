import 'package:book_app_flutter/NavBar.dart';
import 'package:book_app_flutter/ScreenTwo.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

String name = 'I Love Kabita';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent.shade700,
        title: const Text(
          'App Bar',
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w900,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "Menu button pressed",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                );
              },
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: 'Logout',
                    toastLength: Toast.LENGTH_SHORT,
                    backgroundColor: Colors.orange,
                    gravity: ToastGravity.BOTTOM);
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              )),
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))
        ),
      ),
      drawer: NavBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text('Hello Flutter Developer'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 100),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      name,
                      style: const TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 66,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Center(
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.deepOrange,
                      ),
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      height: 100,
                      child: Text(
                        name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ClipOval(
                child: Image.asset('assets/nayeem.png',
                    width: 100, height: 100)),
            ClipOval(
                child: Image.asset('assets/nayeem.png',
                    width: 100, height: 100)),
            Image.asset('assets/nayeem.png', width: 100, height: 100),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(40)),
              child: Image.asset('assets/nayeem.png'),
            ),
          ],
        ),
      ),
    );
  }
}
