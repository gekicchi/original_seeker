import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
  SvgPicture img,
  String myName,
  String adaptName,
  String into,
  String desc,
  String scr,
) {
  return OriginalVersion(
    image: img,
    name: myName,
    adaptationName: adaptName,
    adaptatedInto: into,
    description: desc,
    score: scr,
  );
}

class ListofOriginals {
  List<OriginalVersion> originals = List.empty();

  ListofOriginals(List<OriginalVersion> or) {
    originals = or;
  }

  OriginalVersion getAtIndex(int index) {
    return originals.elementAt(index);
  }

  void addToList(OriginalVersion original) {
    originals.add(original);
  }

  void removeFromList(int index) {
    originals.removeAt(index);
  }
}
