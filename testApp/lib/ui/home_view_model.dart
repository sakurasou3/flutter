import 'package:flutter/widgets.dart';
class HomeViewModel extends ChangeNotifier {
  int _count = 0;
  int get counter => _count;

  void incrementCounter() {
    this._count++;
    notifyListeners();
  }

  void decrementCounter() {
    this._count--;
    notifyListeners();
  }
}