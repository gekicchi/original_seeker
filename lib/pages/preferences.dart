import 'package:flutter/material.dart';
import 'package:original_seeker/provider/app_data.dart';
import 'package:original_seeker/theme/theme.dart';
import 'package:provider/provider.dart';

class Preferences extends StatefulWidget {
  const Preferences({super.key});

  @override
  State<Preferences> createState() => _PreferenceState();
}

class _PreferenceState extends State<Preferences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MaterialTheme.lightScheme().primary,
        title: const Text('Preferencias'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Text("Mostrar Libros "),
              Switch(
                value: context.read<AppData>().fromBook,
                onChanged: (bool x) => context.read<AppData>().toggleBook,
              ),
            ],
          ),
          Row(
            children: [
              const Text("Mostrar Comics "),
              Switch(
                value: context.watch<AppData>().fromComic,
                onChanged:
                    (bool x) => {
                      setState(() {
                        context.read<AppData>().toggleComic;
                      }),
                    },
              ),
            ],
          ),
          Row(
            children: [
              const Text("Mostrar Juegos "),
              Switch(
                value: context.read<AppData>().fromGame,
                onChanged: (bool x) => context.read<AppData>().toggleGame,
              ),
            ],
          ),
          Row(
            children: [
              const Text("Mostrar Mangas "),
              Switch(
                value: context.read<AppData>().fromManga,
                onChanged: (bool x) => context.read<AppData>().toggleManga,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
