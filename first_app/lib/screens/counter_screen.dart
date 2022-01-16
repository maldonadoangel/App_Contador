import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  // super Constructor
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 40;
  //variable o propiedad

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void zero() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //Creamos una variable
    const fontSize30 = TextStyle(fontSize: 30);

    //El scaffold es el lienzo blanco de nuestra app, le colocamos los widgets que deseemos
    //no siempre tendremos un appbar, no siempre tendremos un un floatinActionButton, pero casi el 99% tendremos el body
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('CounterScreen'),
        centerTitle: true,
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
      //Pasamos parametros a nuestra funcion widget floatingActionButton, funcion que iniciamos en nuestro customFloatingAction

      floatingActionButton: CustomFloatingActions(
          increaseFn: increase, decreaseFn: decrease, zeroFn: zero),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function zeroFn;
  const CustomFloatingActions(
      {Key? key,
      required this.increaseFn,
      required this.decreaseFn,
      required this.zeroFn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.red,
          child: const Icon(Icons.add),
          onPressed: () => increaseFn(),
        ),
        const SizedBox(
          width: 20,
        ),
        //Ejemplo sin funcion flecha, solo una funcion normal
        FloatingActionButton(
            backgroundColor: Colors.red,
            child: const Icon(Icons.exposure_zero),
            onPressed: () {
              zeroFn();
            }),
        const SizedBox(
          width: 20,
        ),
        FloatingActionButton(
          backgroundColor: Colors.red,
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFn(),
        ),
      ],
    );
  }
}
