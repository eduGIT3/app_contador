import 'package:flutter/material.dart';

class Home1Screen extends StatelessWidget{
  const Home1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        title: Text('HomeScreen'),
        backgroundColor: Colors.amberAccent,
        elevation: 20,
       
      ),

      backgroundColor: Colors.white,
      body: Center(
          child:    
          MediaQuery.removePadding( //https://api.flutter.dev/flutter/widgets/AnimatedList-class.html
              context: context,
              removeTop: true,
              removeBottom: true,
            child: AnimatedList(
              initialItemCount: 4,
              itemBuilder: (BuildContext context, int index, Animation<double> animation) {
                return Card(
                color: const Color.fromARGB(255, 61, 218, 14),
                  child: Center(child: Text('$index')),
              );
          }
        ),

        )

      )
    );
  }
}