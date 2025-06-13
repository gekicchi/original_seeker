import 'package:flutter/material.dart';
import 'package:original_seeker/pages/original_details.dart';
import 'package:original_seeker/data/original_list.dart';
import 'my_list.dart';
import 'profile.dart';
import 'package:original_seeker/util/util_functions.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(child: Text('Contenidos')),
            TextField(
              controller: textController,
              decoration: InputDecoration(hintText: 'Buscar'),
            ),
            TextButton(
              onPressed:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => OriginalDetails(
                            originalVersion:
                                originals
                                    .where(
                                      (x) => x.or.name == textController.text,
                                    )
                                    .toList()[0],
                          ),
                    ),
                  ),
              child: Text('Buscar'),
            ),
            addPageToList(Text('Perfil'), context, Profile()),
            addPageToList(Text('Mi Lista'), context, MyList()),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10.0,
          children: [
            Card(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'Descripción',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Text(
                    'Original Seeker busca darle un lugar a aquellas personas que no se satisfacen solo con ver películas adaptadas sino que también quieren conocer las versiones originales de estas',
                  ),
                ],
              ),
            ),
            Text(
              'Recientemente Adaptado',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Card(child: originals[0]),
            Card(child: originals[1]),
            Card(child: originals[2]),
            Card(child: originals[3]),
          ],
        ),
      ),
    );
  }
}
