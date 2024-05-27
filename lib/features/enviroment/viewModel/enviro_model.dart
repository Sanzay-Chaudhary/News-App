import 'package:flutter/material.dart';

class EnvironmentProvider extends ChangeNotifier {
  int counter = 0;
  void increment() {
    counter++;
    notifyListeners();
  }
}
