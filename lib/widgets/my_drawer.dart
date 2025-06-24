import 'package:flutter/material.dart';
import 'package:original_seeker/pages/my_list.dart';
import 'package:original_seeker/pages/profile.dart';
import 'package:original_seeker/pages/original_details.dart';
import 'package:original_seeker/util/util_functions.dart';
import 'package:original_seeker/data/models/original_list.dart';
import 'package:original_seeker/pages/about.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key, required this.textController});
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
          addPageToList(const Text('Perfil'), context, Profile()),
          addPageToList(const Text('Mi Lista'), context, MyList()),
          addPageToList(const Text('Acerca De'), context, About()),
        ],
      ),
    );
  }
}
