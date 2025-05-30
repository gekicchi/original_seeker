import 'package:flutter/material.dart';
import 'package:original_seeker/pages/my_list.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Perfil'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Card(
            color: const Color.fromARGB(255, 208, 149, 134),
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
                      child: Text('Ver mi lista'),
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
