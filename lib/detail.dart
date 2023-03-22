import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:car_app/models.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.items}) : super(key: key);

  final Cars items;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImageArea(
            items: widget.items,
          ),
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.items.name}',
                        style: const TextStyle(
                          color: Color.fromARGB(255, 84, 10, 10),
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Tipo: Deportivo con transmision base, neumaticos de fabrica y sin aceleracion adicional',
                        style: TextStyle(
                          color: Color.fromARGB(255, 8, 7, 7),
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Creado en Noruega',
                        style: TextStyle(
                          color: Color(0xFFbaaeba),
                          fontSize: 12,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.star_purple500_rounded,
                              color: Colors.yellow,
                              size: 16,
                            ),
                            Icon(
                              Icons.star_purple500_rounded,
                              color: Colors.yellow,
                              size: 16,
                            ),
                            Icon(
                              Icons.star_purple500_rounded,
                              color: Colors.yellow,
                              size: 16,
                            ),
                            Icon(
                              Icons.star_purple500_rounded,
                              color: Colors.yellow,
                              size: 16,
                            ),
                            Text(
                              '   2 en el mundo / Vistas 540',
                              style: TextStyle(
                                  color: Color(0xFF7f628d),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      const Divider(),
                      const Text(
                        'Pegasus Inc',
                        style: TextStyle(
                          color: Color.fromARGB(255, 141, 98, 98),
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        'Empresa que hizo la inspeccion al vehiculo y cuenta con la calificacion para rankear a este vehiculo',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Divider(),
                    ],
                  ),
                ),
              ),
              const OrderButton(),
            ],
          ),
        ],
      ),
    );
  }
}

class OrderButton extends StatelessWidget {
  const OrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        height: 70,
        width: MediaQuery.of(context).size.width * 0.45,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 254, 120, 120),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
        ),
        child: const Center(
          child: Text(
            'Mas Informacion',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

class ImageArea extends StatelessWidget {
  const ImageArea({Key? key, required this.items}) : super(key: key);

  final Cars items;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.55,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(items.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: -1,
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: 35,
          right: 60,
          child: Container(
            height: 55,
            width: 55,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
              color: Color.fromARGB(255, 254, 148, 148),
            ),
            child: IconButton(
              color: Colors.white,
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
      ],
    );
  }
}
