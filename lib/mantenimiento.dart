import 'package:flutter/material.dart';

class MantenimientoPage extends StatelessWidget {
  const MantenimientoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mantenimiento'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Seleccione el tipo de mantenimiento que desea realizar:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón
              },
              child: Text('Mantenimiento preventivo'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón
              },
              child: Text('Mantenimiento correctivo'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón
              },
              child: Text('Mantenimiento predictivo'),
            ),
          ],
        ),
      ),
    );
  }
}
