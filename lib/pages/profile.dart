import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Perfil'),
      ),
      body: Card(
        color: Colors.lightGreen,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
