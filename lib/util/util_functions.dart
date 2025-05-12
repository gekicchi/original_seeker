import 'package:flutter/material.dart';
import 'original_version.dart';

ListTile addPageToList(
  Text pageName,
  BuildContext context,
  StatelessWidget page,
) {
  return ListTile(
    title: pageName,
    onTap:
        () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        ),
  );
}

OriginalVersion addOriginal(
  Icon img,
  String myName,
  String adaptName,
  String scr,
  VoidCallback pressed,
) {
  return OriginalVersion(
    image: img,
    name: myName,
    adaptationName: adaptName,
    score: scr,
    onPressed: pressed,
  );
}

void goToPage(BuildContext context, StatelessWidget page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}
