import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'vb',
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var indexUp = 3;
  var indexDown = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text(
          'سنگ   کاغذ    قیچی',
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset('images/$indexUp.png'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size(
                  double.infinity,
                  150,
                ),
              ),
              onPressed: () {
                setState(() {
                  indexUp = Random().nextInt(3) + 1;
                  indexDown = Random().nextInt(3) + 1;
                });
              },
              child: Text(
                'شروع بازی',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(
              child: Image.asset(
                'images/$indexDown.png',
              ),
            )
          ],
        ),
      ),
    );
  }
}
