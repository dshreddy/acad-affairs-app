import 'package:flutter/material.dart';

class Global extends ChangeNotifier {
  int currentPageIndex = 0;

  void setIndex(int index) {
    currentPageIndex = index;
    notifyListeners();
  }
}
