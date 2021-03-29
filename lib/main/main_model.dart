import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String sampleText = 'Providerの変数';

  void changeSampleText() {
    sampleText = 'かえたよ';
    notifyListeners();
  }
}
