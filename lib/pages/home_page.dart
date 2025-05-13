import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'my_list.dart';
import 'profile.dart';
import 'about.dart';
import 'original_details.dart';
import 'package:original_seeker/util/util_functions.dart';

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
            Text(
              'Recientemente Adaptado',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            addOriginal(
              SvgPicture.asset('images/adaptations/minecraft.svg'),
              'Minecraft',
              'A Minecraft Movie',
              '9.5/10',
            ),
          ],
        ),
      ),
    );
  }
}
