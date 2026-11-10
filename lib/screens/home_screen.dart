import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  void decrementar() {
    contador--;
    setState(() {});
  }

  void establecer0() {
    contador = 0;
    setState(() {});
  }

  void incrementar() {
    contador++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const tamano30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
        backgroundColor: Colors.amberAccent,
        elevation: 20,
      ),

      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de Cliks', style: tamano30),
            Text('$contador', style: tamano30),
          ],
        ),

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
      ),
      //Boton
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActionButton(incrementarFn: incrementar, decrementarFn: decrementar, establecer0: establecer0,),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    Key? key, required this.incrementarFn,
    required this.decrementarFn,
    required this.establecer0
  } ): super(key:key);

  final Function decrementarFn;
  final Function establecer0;

  final Function incrementarFn;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          child: Icon(Icons.add),
          onPressed: () => incrementarFn(),
        ),

        //SizedBox(width: 20),
        FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          child: Text("0"),
          onPressed: () => establecer0(),
        ),

        //SizedBox(width: 20),
        FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          child: Icon(Icons.remove),
          onPressed: () => decrementarFn(),
        ),
      ],
    );
  }
}
