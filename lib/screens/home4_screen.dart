import 'package:flutter/material.dart';

class Home4Screen extends StatelessWidget{
  const Home4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
       appBar: AppBar(
        title: Text("Home4_Screen"),
        backgroundColor: Colors.indigo,
        elevation: 20,
        ),
          


        body: const CardExample(),

    );
  }
}

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) { //https://api.flutter.dev/flutter/material/Card-class.html
    return Center(
      child: Card(
        clipBehavior: .hardEdge,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Text('A card that can be tapped'),
          ),
        ),
      ),
    );
  }
}