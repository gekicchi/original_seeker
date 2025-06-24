import 'package:flutter/material.dart';
import 'package:original_seeker/data/models/original_list.dart';
import 'package:original_seeker/theme/theme.dart';
import 'package:original_seeker/widgets/my_drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MaterialTheme.lightScheme().primary,
        title: Text(widget.title),
      ),
      drawer: MyDrawer(textController: textController),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10.0,
          children: [
            Text(
              'Recientemente Adaptado',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Card(child: originals[0]),
            Card(child: originals[1]),
            Card(child: originals[2]),
            Card(child: originals[3]),
          ],
        ),
      ),
    );
  }
}
