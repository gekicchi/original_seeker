import 'package:flutter/material.dart';
import 'package:original_seeker/util/util_functions.dart';
import '../widgets/original_version.dart';

Original minecraft = Original(
  Image.asset('images/adaptations/minecraft.jpg'),
  'Minecraft',
  'Una Pelicula de Minecraft',
  'Videojuego',
  'Minecraft es un videojuego sandbox enfocado en permitirle al jugador explorar y modificar un mundo generado dinámicamente hecho de bloques de un metro cúbico. Es mantenido por Mojang Studios, que forma parte de Xbox Game Studios, que a su vez es parte de Microsoft.',
  '9.3/10',
  [
    'Una gran experiencia de principio a fin, odio a los phantoms',
    'llegó la primera noche y no dejé de morir GOTY',
  ],
);

Original percyJackson = Original(
  Image.asset('images/adaptations/percyJ.jpg'),
  'Percy Jackson',
  'Percy Jackson: y el Ladrón del Rayo',
  'Libro',
  'El mar de los monstruos es una novela fantástica de aventuras basada en la mitología griega. Está escrita por el autor Rick Riordan y fue publicada el 1 de abril de 2006 en Estados Unidos, y en junio de 2008 en España,​ por la editorial Salamandra, dentro de su línea Narrativa Juvenil. Es el segundo libro de la saga Percy Jackson y los dioses del Olimpo y la secuela de El ladrón del rayo. Este libro narra las aventuras del semidiós Percy Jackson, y trata de como él y su amiga Annabeth —otra semidiosa— van a rescatar al sátiro Grover del cíclope Polifemo y salvar el campamento de los ataques de los monstruos, por lo que tienen que traer el vellocino de oro para curar de envenenamiento el árbol de Thalía',
  '9.6/10',
  [
    'a mi profesora le gusta este libro, lo lei y no resulto ser la gran cosa',
    'percabeth mis papis',
  ],
);

Original capitanAmerica = Original(
  Image.asset('images/adaptations/capitanAmerica.png'),
  'Capitan America',
  'Capitan America: el Soldado del Invierno',
  'Comic',
  'Nick Fury , director de la agencia de espionaje SHIELD , informa al Capitán América sobre el "Soldado de Invierno": un asesino en activo desde mediados del siglo XX que aparentemente no envejece. Fury sospecha que el Soldado de Invierno es un Bucky Barnes con el cerebro lavado , antiguo compañero del Capitán América , quien se cree murió durante la Segunda Guerra Mundial . Fury también sospecha que el Soldado de Invierno está vinculado a Aleksander Lukin , un oligarca ruso y exgeneral de la KGB , y que Lukin posee un Cubo Cósmico , un poderoso objeto que distorsiona la realidad.',
  '6.4/10',
  [
    'noooo bucky que te hicieron',
    'no me gusto el desarrollo del personaje de nick fury en este arco',
  ],
);

Original lookBack = Original(
  Image.asset('images/adaptations/lookBack.jpeg'),
  'Look Back',
  'Look Back',
  'Manga',
  'Ayumu Fujino, estudiante de cuarto grado, dibuja regularmente manga de cuatro viñetas para el periódico escolar y es alabada por tener el mejor dibujo de la clase. Un día, su profesora le pide que ceda uno de sus espacios de manga en el periódico escolar a un estudiante que se ausentaba de la escuela llamado Kyomoto. Cuando el manga de Kyomoto aparece junto al de Fujino, recibe grandes elogios por su detallado dibujo, lo que provoca una envidia furiosa en Fujino.',
  '8.4/10',
  [
    'una increible experiencia, jamas habia llorado tanto con un manga',
    'creo que quiero aprender a dibujar ahora',
  ],
);

final originals = <OriginalVersion>[
  addOriginal(minecraft),
  addOriginal(percyJackson),
  addOriginal(capitanAmerica),
  addOriginal(lookBack),
];

final myList = <OriginalVersion>[];
