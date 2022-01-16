import 'package:first_app/screens/counter_screen.dart';
import 'package:flutter/material.dart';

//Usualmente casi siempre, creamos nuestra funcion principal y llamamos nuestro primer widget para que se renderice
//nuestro primer widget que es MyApp, usualmente posee dentro un MaterialApp
void main() {
  runApp(const MyApp());
}

//El statelesswidget, siempre necesita un widget build que se encuentre sobre escrito (@override)
// el widget build siempre necesita regresar otro widget, este tipo de widget se maneja siempre de manera sincrona
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CounterScreen());
  }
}
