import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:original_seeker/util/original_version.dart';

class OriginalDetails extends StatelessWidget {
  final OriginalVersion originalVersion;

  const OriginalDetails({super.key, required this.originalVersion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(originalVersion.or.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              originalVersion.or.image,
              Card(
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        originalVersion.or.score,
                        textScaler: TextScaler.linear(3),
                      ),
                      Text(
                        '${originalVersion.or.adaptatedInto} que inspiró ${originalVersion.or.adaptationName}',
                      ),
                      TextButton(
                        onPressed: () => {},
                        child: Text(
                          'Añadir a Lista',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Card(
                        color: const Color.fromARGB(255, 232, 161, 161),
                        child: ExpansionTile(
                          title: Card(
                            child: Text(
                              'Sinopsis',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          children: [Text(originalVersion.or.description)],
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'deja tu reseña aqui',
                        ),
                        maxLines: 3,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
