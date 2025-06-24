import 'package:flutter/material.dart';

class AppData extends ChangeNotifier {
  bool _fromBook = true;
  bool _fromComic = true;
  bool _fromGame = true;
  bool _fromManga = true;

  bool get fromBook => _fromBook;
  bool get fromComic => _fromComic;
  bool get fromGame => _fromGame;
  bool get fromManga => _fromManga;

  void toggleBook() {
    _fromBook = !_fromBook;
    notifyListeners();
  }

  void toggleComic() {
    _fromComic = !_fromComic;
    print(_fromComic);
    notifyListeners();
  }

  void toggleGame() {
    _fromGame = !_fromGame;
    notifyListeners();
  }

  void toggleManga() {
    _fromManga = !_fromManga;
    notifyListeners();
  }
}
