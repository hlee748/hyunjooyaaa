import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

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

  get controller => null;
  Position _currentPosition;



  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
          TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hyunjooyaaa',
          style: TextStyle(
            fontSize: 40,
          ),),
          backgroundColor: Colors.yellow,
            actions: <Widget>[
                TextButton(
                  style: style,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MeRoute()),
                    );
                  },
                  child: const Text("It's Me",
                  style: TextStyle(
                    fontSize: 20
                  ),),
                ),
                TextButton(
                  style: style,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WorkRoute()),
                    );
                  },
                  child: const Text('WORKS',
                  style: TextStyle(
                    fontSize: 20
                  ),),
                )
            ],
        ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: buildHyunjooyaaTitle(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (_currentPosition != null) Text(
                "LAT: ${_currentPosition.latitude}, LNG: ${_currentPosition.longitude}"
              ),
              FlatButton(onPressed: (
              {_getCurrentPosition()}
              ), child: Text("Get location"))
            ],
          )
        ],
      ),
  );
  }
  }

_getCurrentPosition() {
  Geolocator
      .getCurrentPosition(desiredAccuracy: LocationAccuracy.best, forceAndroidLocationManager: true)
      .then((Position position) {
    setState(() {
      _currentPosition = position;
    });
  }).catchError((e) {
    print(e);
  });
}





  Widget buildHyunjooyaaTitle() {
    return Container(
      color: Colors.yellow,
      child: const Center(

      child: Text(
          'JULIE.',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 200,
              fontFamily: 'RobotoMono-Medium'),
          ),
      ),
    );
  }

class WorkRoute extends StatelessWidget {
  const WorkRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("WORK"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: const Text('back'),
        ),
      ),
    );
  }
}

class MeRoute extends StatelessWidget {
  const MeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("It's Me"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: const Text('back'),
        ),
      ),
    );
  }
}