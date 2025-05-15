import 'package:flutter/material.dart';
import 'package:original_seeker/util/original_list.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Mi Lista'),
      ),

      body: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context, index) {
          return Card(child: ListTile(title: myList[index]));
        },
      ),
    );
  }
}
