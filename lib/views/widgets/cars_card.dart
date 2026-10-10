import 'package:carros_antigos/views/pages/car_details_page.dart';
import 'package:flutter/material.dart';
import 'package:carros_antigos/models/cars.dart';

class CarsCard extends StatelessWidget {

  final Cars cars;

  const CarsCard({ super.key, required this.cars });

  String _formatMilhar(num valor) {
    final s = valor.toStringAsFixed(0);
    final buffer = StringBuffer();
    for (int i = 0; i < s.length; i++) {
      final restantes = s.length - i;
      buffer.write(s[i]);
      if (restantes > 1 && restantes % 3 == 1) buffer.write('.');
    }
    return buffer.toString();
  }

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: (){
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => CarDetailsPage(cars: cars),
          )
        );
      },
      child: Column(
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
      
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(cars.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('${_formatMilhar(cars.km)}km - ${cars.year} - ${cars.color}', style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                    SizedBox(height: 3),
                    Text('R\$${_formatMilhar(cars.price)}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 3),
                    Text('Há ${cars.publishedDate} dias | ${cars.location}')
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}