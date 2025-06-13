import 'package:flutter/material.dart';
import '../widgets/original_version.dart';

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

OriginalVersion addOriginal(Original or) {
  return OriginalVersion(or: or);
}

class ListOfOriginals {
  List<OriginalVersion> originals = List.empty();

  ListOfOriginals(List<OriginalVersion> or) {
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
