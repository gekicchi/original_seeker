import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:original_seeker/util/original_version.dart';

class OriginalDetails extends StatelessWidget {
  final OriginalVersion originalVersion;

  const OriginalDetails({super.key, required this.originalVersion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(originalVersion.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('images/adaptations/minecraft.svg'),
            Card(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      originalVersion.score,
                      textScaler: TextScaler.linear(3),
                    ),
                    Text(
                      'Version Original de ' + originalVersion.adaptationName,
                    ),
                    Text('aqui va la descripcion del coso'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
