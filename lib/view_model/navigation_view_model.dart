import 'package:flutter/material.dart';
import 'package:places/enum/enum.dart';

class NavigationViewModel extends ChangeNotifier {
  Item currentItem = Item.home;

  //This function updates the currentItem
  void updateCurrentItem(Item newItem) {
    currentItem = newItem;
    notifyListeners();
  }
}
