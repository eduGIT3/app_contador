import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador=0;
  @override
  Widget build(BuildContext context) {
    const tamano30=TextStyle(fontSize: 30);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
        backgroundColor: Colors.amberAccent,
        elevation: 20,
       
      ),

      backgroundColor: Colors.white,
      body: Center(
        
          child: 

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('deliver Features faster', style: tamano30,),
                  Text('$contador', style: tamano30),
                ],
              )
              

              /*
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
         */     
          //Text('Hola Mundo desde homeScreen'),
        ),
        //Boton
        floatingActionButtonLocation:FloatingActionButtonLocation.endDocked ,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          child: Icon(Icons.add),
          onPressed: (){
            print("Pulsación registrada");
            contador++;
            print(contador);
            setState(() { // Redibuja el widget
              
            });

          }),

    );



  }
}