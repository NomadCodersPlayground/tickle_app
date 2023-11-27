import 'package:flutter/material.dart';

class SearchViewModel extends ChangeNotifier {
  bool _showTextField = false;

  bool get showTextField => _showTextField;

  void switchShowTextField() {
    _showTextField = !_showTextField;
    notifyListeners();
  }
}