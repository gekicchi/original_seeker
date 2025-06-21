import 'package:flutter/material.dart';
import 'package:original_seeker/data/models/original_database.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  Future<void> initializeDatabase() async {
    await _database;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'original_databse.db');

    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE originals(
        id INTEGER PRIMARY KEY
        name TEXT NOT NULL
        adaptationName TEXT NOT NULL
        adaptatedInto TEXT NOT NULL
        description TEXT NOT NULL
        score TEXT NOT NULL
      )
    ''');
  }

  Future<void> insertOriginal(Original or) async {
    final db = await _database;
    await db?.insert(
      'originals',
      or.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
