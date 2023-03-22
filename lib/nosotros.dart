import 'package:flutter/material.dart';

class NosotrosPage extends StatelessWidget {
  const NosotrosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nosotros'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Somos una empresa dedicada a brindar soluciones en mantenimiento automotriz desde hace más de 10 años.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[800],
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Misión',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Nuestra misión es brindar un servicio de alta calidad y eficiencia en mantenimiento automotriz para satisfacer las necesidades de nuestros clientes.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[800],
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Visión',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Ser reconocidos como líderes en el mercado de mantenimiento automotriz y expandir nuestros servicios a nivel nacional e internacional.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[800],
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
