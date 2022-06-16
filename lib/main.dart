import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hyunjooyaaa!!',
      home: Scaffold(
        backgroundColor: const Color(0xffFCBD0E),
          appBar: AppBar(
          title: Text('JULIE'),
          centerTitle: true,
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){
                print('menu button is clicked');
              },
            ),
            ],
          ),
        ),

        backgroundColor: const Color(0xffFCBD0E),

        body: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: buildHyunjooyaaTitle(),
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
        padding: EdgeInsets.only(left: 20, bottom: 20),
        child: Text(
          'JULIE',
          style: TextStyle(
              color: Colors.white,
              fontSize: 100,
              fontFamily: 'RobotoMono-Medium'),
        ),
      ),
    );
  }
}
