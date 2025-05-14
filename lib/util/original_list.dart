import 'package:flutter_svg/flutter_svg.dart';
import 'package:original_seeker/util/util_functions.dart';
import 'original_version.dart';

Original minecraft = Original(
  SvgPicture.asset('images/adaptations/minecraft.svg'),
  'Minecraft',
  'Una Pelicula de Minecraft',
  'Videojuego',
  'Minecraft es un videojuego sandbox enfocado en permitirle al jugador explorar y modificar un mundo generado dinámicamente hecho de bloques de un metro cúbico. Es mantenido por Mojang Studios, que forma parte de Xbox Game Studios, que a su vez es parte de Microsoft.',
  '9.3/10',
);

Original percyJackson = Original(
  SvgPicture.asset('images/adaptations/percyJ.svg'),
  'Percy Jackson: el Mar de los Monstruos',
  'Percy Jackson: el Mar de los Monstruos',
  'Libro',
  'El mar de los monstruos es una novela fantástica de aventuras basada en la mitología griega. Está escrita por el autor Rick Riordan y fue publicada el 1 de abril de 2006 en Estados Unidos, y en junio de 2008 en España,​ por la editorial Salamandra, dentro de su línea Narrativa Juvenil. Es el segundo libro de la saga Percy Jackson y los dioses del Olimpo y la secuela de El ladrón del rayo. Este libro narra las aventuras del semidiós Percy Jackson, y trata de como él y su amiga Annabeth —otra semidiosa— van a rescatar al sátiro Grover del cíclope Polifemo y salvar el campamento de los ataques de los monstruos, por lo que tienen que traer el vellocino de oro para curar de envenenamiento el árbol de Thalía',
  '9.6/10',
);

Original capitanAmerica = Original(
  SvgPicture.asset('images/adaptations/capitanAmerica.svg'),
  'Capitan America',
  'Capitan America: el Soldado del Invierno',
  'Comic',
  'Nick Fury , director de la agencia de espionaje SHIELD , informa al Capitán América sobre el "Soldado de Invierno": un asesino en activo desde mediados del siglo XX que aparentemente no envejece. Fury sospecha que el Soldado de Invierno es un Bucky Barnes con el cerebro lavado , antiguo compañero del Capitán América , quien se cree murió durante la Segunda Guerra Mundial . Fury también sospecha que el Soldado de Invierno está vinculado a Aleksander Lukin , un oligarca ruso y exgeneral de la KGB , y que Lukin posee un Cubo Cósmico , un poderoso objeto que distorsiona la realidad.',
  '6.4/10',
);

Original lookBack = Original(
  SvgPicture.asset('images/adaptations/lookBack.svg'),
  'Look Back',
  'Look Back',
  'Manga',
  'Ayumu Fujino, estudiante de cuarto grado, dibuja regularmente manga de cuatro viñetas para el periódico escolar y es alabada por tener el mejor dibujo de la clase. Un día, su profesora le pide que ceda uno de sus espacios de manga en el periódico escolar a un estudiante que se ausentaba de la escuela llamado Kyomoto. Cuando el manga de Kyomoto aparece junto al de Fujino, recibe grandes elogios por su detallado dibujo, lo que provoca una envidia furiosa en Fujino.',
  '8.4/10',
);

final originals = <OriginalVersion>[
  addOriginal(minecraft),
  addOriginal(percyJackson),
  addOriginal(capitanAmerica),
  addOriginal(lookBack),
];

final myList = <OriginalVersion>[];
