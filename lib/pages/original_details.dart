import 'package:flutter/material.dart';
import 'package:original_seeker/util/original_list.dart';
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
                        onPressed: () => {myList.add(originalVersion)},
                        child: Text(
                          'Añadir a Lista',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        color: const Color.fromARGB(255, 232, 161, 161),
                        child: ExpansionTile(
                          title: Card(
                            child: Text(
                              'Sinopsis',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          childrenPadding: EdgeInsets.all(10),
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
                      Card(
                        margin: EdgeInsets.all(10),
                        color: const Color.fromARGB(255, 232, 161, 161),
                        child: ExpansionTile(
                          title: Card(
                            child: Text('Reseñas', textAlign: TextAlign.center),
                          ),
                          childrenPadding: EdgeInsets.all(10),
                          children: [
                            Card(
                              child: Text(
                                originalVersion.or.reviews[0],
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Card(
                              child: Text(
                                originalVersion.or.reviews[1],
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
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
