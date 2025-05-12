import 'package:flutter/material.dart';

class OriginalVersion extends StatelessWidget {
  final Icon image;
  final String name;
  final String adaptationName;
  final String score;
  final VoidCallback onPressed;

  const OriginalVersion({
    super.key,
    required this.image,
    required this.name,
    required this.adaptationName,
    required this.score,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          image,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(adaptationName),
              Text(score),
            ],
          ),
        ],
      ),
    );
  }
}
