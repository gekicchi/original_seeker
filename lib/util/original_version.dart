import 'package:flutter/material.dart';

class OriginalVersion extends StatelessWidget {
  final Icon image;
  final FloatingActionButton button;
  const OriginalVersion({super.key, required this.image, required this.button});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          image,
          Column(
            children: [
              Text('aqui va el nombre'),
              Text('aqui va el nombre de la adapacion'),
              Text('aqui va la puntuacion'),
              button,
            ],
          ),
        ],
      ),
    );
  }
}
