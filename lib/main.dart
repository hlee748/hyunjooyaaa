import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

  class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
          TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
            actions: <Widget>[
                TextButton(
                  style: style,
                  onPressed: () {},
                  child: const Text('ME'),
                ),
                TextButton(
                  style: style,
                  onPressed: () {},
                  child: const Text('WORKS'),
                )
            ],
        ),
      body: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: buildHyunjooyaaTitle(),
          ),
        ],
      ),
  );
  }
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

