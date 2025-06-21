import 'package:flutter/material.dart';
import 'package:original_seeker/data/models/original_list.dart';
import 'package:original_seeker/theme/theme.dart';
import 'package:original_seeker/widgets/original_version.dart';

class OriginalDetails extends StatelessWidget {
  final OriginalVersion originalVersion;

  const OriginalDetails({super.key, required this.originalVersion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MaterialTheme.lightScheme().primary,
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
                color: MaterialTheme.lightScheme().primaryContainer,
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
                        child: const Text(
                          'Añadir a Lista',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        color: MaterialTheme.lightScheme().secondaryContainer,
                        child: ExpansionTile(
                          title: const Text(
                            'Sinopsis',
                            textAlign: TextAlign.center,
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
                        margin: EdgeInsets.all(8),
                        color: MaterialTheme.lightScheme().secondaryContainer,
                        child: ExpansionTile(
                          title: const Text(
                            'Reseñas',
                            textAlign: TextAlign.center,
                          ),
                          childrenPadding: EdgeInsets.all(8),
                          children: [
                            Card(
                              color:
                                  MaterialTheme.lightScheme().tertiaryContainer,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  originalVersion.or.reviews[0],
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                            Card(
                              color:
                                  MaterialTheme.lightScheme().tertiaryContainer,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  originalVersion.or.reviews[1],
                                  textAlign: TextAlign.start,
                                ),
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
