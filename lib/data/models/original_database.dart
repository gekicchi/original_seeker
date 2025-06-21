import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Original {
  final int id;
  final Image image;
  final String name;
  final String adaptationName;
  final String adaptatedInto;
  final String description;
  final String score;
  final List<String> reviews;

  const Original({
    required this.id,
    required this.image,
    required this.name,
    required this.adaptationName,
    required this.adaptatedInto,
    required this.description,
    required this.score,
    required this.reviews,
  });

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'name': name,
      'adaptationName': adaptationName,
      'adaptatedInto': adaptatedInto,
      'description': description,
      'score': score,
    };
  }
}
