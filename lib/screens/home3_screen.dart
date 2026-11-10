import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home3Screen extends StatelessWidget {
  const Home3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text('Home3Screen'),
        leading: Icon(
          Icons.favorite, //https://api.flutter.dev/flutter/widgets/Icon-class.html
          color: Colors.pink,
          size: 24.0,
          semanticLabel: 'Home3Screen',
        ),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: const Image(
          //https://api.flutter.dev/flutter/widgets/Image-class.html
          image: NetworkImage(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
          ),
        ),
      ),
    );
  }
}
