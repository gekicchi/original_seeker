import 'package:flutter/material.dart';
import 'package:original_seeker/pages/my_list.dart';
import 'package:original_seeker/pages/preferences.dart';
import 'package:original_seeker/theme/theme.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MaterialTheme.lightScheme().primary,
        title: const Text('Perfil'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Card(
            color: MaterialTheme.lightScheme().primaryContainer,
            margin: const EdgeInsets.all(45.0),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.person, size: 150),
                    Text('Correo: mymail@example.com'),
                    Text('Ultima vez Online: ahora'),
                    TextButton(
                      onPressed:
                          () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyList()),
                          ),
                      child: const Text('Ver mi lista'),
                    ),
                    TextButton(
                      onPressed:
                          () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Preferences(),
                            ),
                          ),
                      child: const Text('Preferencias'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
