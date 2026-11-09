import 'package:flutter/material.dart';

class Home2Screen extends StatelessWidget{
  const Home2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
  return Scaffold(
    appBar: AppBar(
        title: Text('Home2Screeen'),
        backgroundColor: Colors.brown,
    ),
    body: Center(
          child: Stack( // https://api.flutter.dev/flutter/widgets/Stack-class.html
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 90,
          height: 90,
          color: Colors.green,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.blue,
        ),
      ],
    ),
    ),
  );
  }

}