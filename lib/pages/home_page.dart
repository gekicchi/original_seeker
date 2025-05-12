import 'package:flutter/material.dart';
import 'my_list.dart';
import 'profile.dart';
import 'about.dart';
import 'package:original_seeker/util/original_version.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            addPageToList(Text('Perfil'), context, Profile()),
            addPageToList(Text('Mi Lista'), context, MyList()),
            addPageToList(Text('Sobre Nosotros'), context, About()),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OriginalVersion(
              image: Icon(Icons.fire_hydrant, size: 125),
              button: FloatingActionButton(onPressed: () => {}),
            ),
            OriginalVersion(
              image: Icon(Icons.fire_hydrant, size: 125),
              button: FloatingActionButton(onPressed: () => {}),
            ),
          ],
        ),
      ),
    );
  }
}

ListTile addPageToList(
  Text pageName,
  BuildContext context,
  StatelessWidget page,
) {
  return ListTile(
    title: pageName,
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
  );
}
