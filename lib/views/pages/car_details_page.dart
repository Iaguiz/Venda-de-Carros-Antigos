import 'package:carros_antigos/models/cars.dart';
import 'package:flutter/material.dart';

class CarDetailsPage extends StatelessWidget {

  final Cars cars;

  const CarDetailsPage({
    super.key,
    required this.cars
  });

  String _formatMilhar(num valor) {
    final s = valor.toStringAsFixed(0);
    final buffer = StringBuffer();
    for (int i = 0; i < s.length; i++){
      final restantes = s.length - i;
      buffer.write(s[i]);
      if (restantes > 1 && restantes % 3 == 1) buffer.write('.');
    }
    return buffer.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  cars.image,
                  height: 320,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
            
                Positioned(
                  top: 55,
                  left: 16,
                  child: CircleAvatar(
                    backgroundColor: Colors.black54,
                    child: IconButton(
                      onPressed: () {
                      Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )
                    ),
                  )
                )
              ],
            ),
            Transform.translate(
              offset: const Offset(0, -24),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  )
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${cars.title}',
                      style: const TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600
                      ),
                    ),
        
                    const SizedBox(height: 6),
        
                    Text(
                      '${_formatMilhar(cars.km)} km - ${cars.color} - ${cars.year}',
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
        
                    const SizedBox(height: 12),
        
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        cars.acceptTrade ? 'Aceito trocas' : 'Não aceito trocas',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ),
        
                    const Divider(height: 32),
        
                    Text(
                      'R\$ ${_formatMilhar(cars.price)}',
                      style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
        
                    const SizedBox(height: 4),
        
                    Text(
                      '${cars.publishedDate} - ${cars.location}',
                      style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                    ),
                  ],
                )
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            width: double.infinity,
            height: 52,
            child: ElevatedButton(
              onPressed: () {

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF6200EE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(12)
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Chat',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  )
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}