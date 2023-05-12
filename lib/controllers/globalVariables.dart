import 'package:flutter/material.dart';

class GlobalData {
  static final _globalData = new GlobalData._internal();
  double drawerPos = 0.0;
  ScrollController scrollCont = ScrollController();
  bool menu = false;
  List<bool> selected = List.generate(27, (index) => false);
  int? oldIndex = 0;
  selection() {
    for (var i = 0; i < selected.length; i++) {
      if (oldIndex != i) {
        globalData.selected[i] = false;
      }
    }
  }

  factory GlobalData() {
    return _globalData;
  }
  GlobalData._internal();
}

final globalData = GlobalData();
