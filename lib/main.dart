import 'package:flutter/material.dart';
import 'package:carros_antigos/models/cars.dart';
import 'package:carros_antigos/views/widgets/cars_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Venda de Carros Antigos',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Carros Antigos'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                for(var car in carsMock)
                  CarsCard(cars: car)
              ],
            ),
          )
        ),
      )
    );
  }
}

