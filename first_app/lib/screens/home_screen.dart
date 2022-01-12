import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // super Constructor
  const HomeScreen({Key? key}) : super(key: key);

  //variable o propiedad

  @override
  Widget build(BuildContext context) {
    //Creamos una variable
    const fontSize30 = TextStyle(fontSize: 30);
    int counter = 40;

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador de personas',
              style: fontSize30,
            ),
            Text(
              '$counter',
              style: fontSize30,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print('Presionaron el boton');
          counter++;
          print(counter);
        },
      ),
    );
  }
}
