import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hyunjooyaaa!!!',
      home: Scaffold(
        backgroundColor: const Color(0xffFCBD0E),
        body: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: buildHyunjooyaaTitle(),
            ),

            Positioned(
              top: 0,
              bottom: 0,
              child: Align(
                alignment: Alignment.center,
                child: buildHyunjooyaaTitle(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHyunjooyaaTitle() {
    return Container(
      color: Colors.pink,
      child: const Padding(
        padding: EdgeInsets.only(left: 16, bottom: 16),
        child: Text(
          'Julie',
          style: TextStyle(
              color: Colors.black,
              fontSize: 100,
              fontFamily: 'RobotoMono-Regular'),
        ),
      ),
    );
  }
}
