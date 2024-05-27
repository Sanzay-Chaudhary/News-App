import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  List laptopList = ["Sanjay", "Raj", "Aryan", "suman", "Suprla"];

  List bookmarkList = [];

  void addProductToBookmark(String value) {
    if (bookmarkList.contains(value)) {
      bookmarkList.remove(value);
    } else {
      bookmarkList.add(value);
    }
    print(bookmarkList);
    notifyListeners();
  }
}
