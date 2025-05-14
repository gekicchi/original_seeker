import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
              'Videojuego',
              'Minecraft es un videojuego sandbox enfocado en permitirle al jugador explorar y modificar un mundo generado dinámicamente hecho de bloques de un metro cúbico. Es mantenido por Mojang Studios, que forma parte de Xbox Game Studios, que a su vez es parte de Microsoft.',
              '9.3/10',
            ),
            addOriginal(
              SvgPicture.asset('images/adaptations/minecraft.svg'),
              'Percy Jackson: el Mar de los Monstruos',
              'Percy Jackson: el Mar de los Monstruos',
              'Libro',
              'El mar de los monstruos es una novela fantástica de aventuras basada en la mitología griega. Está escrita por el autor Rick Riordan y fue publicada el 1 de abril de 2006 en Estados Unidos, y en junio de 2008 en España,​ por la editorial Salamandra, dentro de su línea Narrativa Juvenil. Es el segundo libro de la saga Percy Jackson y los dioses del Olimpo y la secuela de El ladrón del rayo. Este libro narra las aventuras del semidiós Percy Jackson, y trata de como él y su amiga Annabeth —otra semidiosa— van a rescatar al sátiro Grover del cíclope Polifemo y salvar el campamento de los ataques de los monstruos, por lo que tienen que traer el vellocino de oro para curar de envenenamiento el árbol de Thalía',
              '9.6/10',
            ),
          ],
        ),
      ),
    );
  }
}
