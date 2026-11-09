import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home2_screen.dart';
import 'package:flutter_application_2/screens/home3_screen.dart';
import 'package:flutter_application_2/screens/home_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }


}