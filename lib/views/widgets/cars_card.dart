import 'package:flutter/material.dart';
import 'package:carros_antigos/models/cars.dart';

class CarsCard extends StatelessWidget {

  final Cars cars;

  const CarsCard({ super.key, required this.cars });

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                cars.image,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(width: 12),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(cars.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text('${cars.km}km - ${cars.year} - ${cars.color}', style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                SizedBox(height: 3),
                Text('R\$${cars.price}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 3),
                Text('Há ${cars.publishedDate} dias | ${cars.location}')
              ],
            )
          ],
        ),
        SizedBox(height: 10)
      ],
    );
  }
}