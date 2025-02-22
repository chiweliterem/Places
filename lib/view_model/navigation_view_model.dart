import 'package:flutter/material.dart';
import 'package:places/enum/enum.dart';

class NavigationViewModel extends ChangeNotifier {
  Item currentItem = Item.home;
  bool renderAnimation = true;

  //This function updates the currentItem
  void updateCurrentItem(Item newItem) {
    currentItem = newItem;
    notifyListeners();
  }

  //This function stops the animation from running again
  void stopAnimation({required bool isRunning}) {
    renderAnimation = false;
    notifyListeners();
  }
}
