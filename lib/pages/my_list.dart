import 'package:flutter/material.dart';
import 'package:original_seeker/data/models/original_list.dart';
import 'package:original_seeker/theme/theme.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MaterialTheme.lightScheme().primary,
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
