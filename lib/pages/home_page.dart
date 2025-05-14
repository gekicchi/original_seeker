import 'package:flutter/material.dart';
import 'package:original_seeker/pages/original_details.dart';
import 'package:original_seeker/util/original_list.dart';
import 'my_list.dart';
import 'profile.dart';
import 'about.dart';
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
            addPageToList(Text('Sobre Nosotros'), context, About()),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10.0,
          children: [
            Text(
              'Recientemente Adaptado',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            originals[0],
            originals[1],
            originals[2],
            originals[3],
          ],
        ),
      ),
    );
  }
}
